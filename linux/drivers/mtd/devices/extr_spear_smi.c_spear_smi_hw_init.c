
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear_smi {int lock; scalar_t__ io_base; int clk_rate; int clk; } ;


 int BANK_EN ;
 int DIV_ROUND_UP (unsigned long,int ) ;
 int DSEL_TIME ;
 int HOLD1 ;
 scalar_t__ SMI_CR1 ;
 scalar_t__ SMI_SR ;
 unsigned long clk_get_rate (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void spear_smi_hw_init(struct spear_smi *dev)
{
 unsigned long rate = 0;
 u32 prescale = 0;
 u32 val;

 rate = clk_get_rate(dev->clk);


 prescale = DIV_ROUND_UP(rate, dev->clk_rate);





 val = HOLD1 | BANK_EN | DSEL_TIME | (prescale << 8);

 mutex_lock(&dev->lock);

 writel(0, dev->io_base + SMI_SR);

 writel(val, dev->io_base + SMI_CR1);
 mutex_unlock(&dev->lock);
}
