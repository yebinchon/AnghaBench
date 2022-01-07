
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_tscadc_dev {int reg_lock; int regmap; } ;


 int REG_SE ;
 int am335x_tscadc_need_adc (struct ti_tscadc_dev*) ;
 int regmap_write (int ,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void am335x_tsc_se_set_once(struct ti_tscadc_dev *tscadc, u32 val)
{
 spin_lock_irq(&tscadc->reg_lock);
 am335x_tscadc_need_adc(tscadc);

 regmap_write(tscadc->regmap, REG_SE, val);
 spin_unlock_irq(&tscadc->reg_lock);
}
