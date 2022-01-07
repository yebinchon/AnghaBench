
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_tscadc_dev {int reg_lock; int reg_se_cache; int regmap; } ;


 int REG_SE ;
 int regmap_write (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void am335x_tsc_se_clr(struct ti_tscadc_dev *tscadc, u32 val)
{
 unsigned long flags;

 spin_lock_irqsave(&tscadc->reg_lock, flags);
 tscadc->reg_se_cache &= ~val;
 regmap_write(tscadc->regmap, REG_SE, tscadc->reg_se_cache);
 spin_unlock_irqrestore(&tscadc->reg_lock, flags);
}
