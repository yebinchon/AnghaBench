
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_tscadc_dev {int adc_waiting; int adc_in_use; int regmap; int reg_se_wait; int reg_lock; } ;


 int CHARGE_STEP ;
 int DEFINE_WAIT (int ) ;
 int REG_ADCFSM ;
 int SEQ_STATUS ;
 int TASK_UNINTERRUPTIBLE ;
 int WARN_ON (int) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int regmap_read (int ,int ,int*) ;
 int schedule () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait ;

__attribute__((used)) static void am335x_tscadc_need_adc(struct ti_tscadc_dev *tscadc)
{
 DEFINE_WAIT(wait);
 u32 reg;

 regmap_read(tscadc->regmap, REG_ADCFSM, &reg);
 if (reg & SEQ_STATUS) {
  tscadc->adc_waiting = 1;
  prepare_to_wait(&tscadc->reg_se_wait, &wait,
    TASK_UNINTERRUPTIBLE);
  spin_unlock_irq(&tscadc->reg_lock);

  schedule();

  spin_lock_irq(&tscadc->reg_lock);
  finish_wait(&tscadc->reg_se_wait, &wait);





  regmap_read(tscadc->regmap, REG_ADCFSM, &reg);
  WARN_ON((reg & SEQ_STATUS) && !(reg & CHARGE_STEP));
  tscadc->adc_waiting = 0;
 }
 tscadc->adc_in_use = 1;
}
