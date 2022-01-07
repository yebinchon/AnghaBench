
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BUG_ON (int) ;
 int EBUSY ;
 int EINVAL ;
 int PRCMU_CLKSRC_CLK009 ;
 int PRCM_CLKOCR ;
 int PRCM_CLKOCR_CLK1TYPE ;
 int PRCM_CLKOCR_CLKODIV0_MASK ;
 int PRCM_CLKOCR_CLKODIV0_SHIFT ;
 int PRCM_CLKOCR_CLKODIV1_MASK ;
 int PRCM_CLKOCR_CLKODIV1_SHIFT ;
 int PRCM_CLKOCR_CLKOSEL0_MASK ;
 int PRCM_CLKOCR_CLKOSEL0_SHIFT ;
 int PRCM_CLKOCR_CLKOSEL1_MASK ;
 int PRCM_CLKOCR_CLKOSEL1_SHIFT ;
 int clkout_lock ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

int prcmu_config_clkout(u8 clkout, u8 source, u8 div)
{
 static int requests[2];
 int r = 0;
 unsigned long flags;
 u32 val;
 u32 bits;
 u32 mask;
 u32 div_mask;

 BUG_ON(clkout > 1);
 BUG_ON(div > 63);
 BUG_ON((clkout == 0) && (source > PRCMU_CLKSRC_CLK009));

 if (!div && !requests[clkout])
  return -EINVAL;

 if (clkout == 0) {
  div_mask = PRCM_CLKOCR_CLKODIV0_MASK;
  mask = (PRCM_CLKOCR_CLKODIV0_MASK | PRCM_CLKOCR_CLKOSEL0_MASK);
  bits = ((source << PRCM_CLKOCR_CLKOSEL0_SHIFT) |
   (div << PRCM_CLKOCR_CLKODIV0_SHIFT));
 } else {
  div_mask = PRCM_CLKOCR_CLKODIV1_MASK;
  mask = (PRCM_CLKOCR_CLKODIV1_MASK | PRCM_CLKOCR_CLKOSEL1_MASK |
   PRCM_CLKOCR_CLK1TYPE);
  bits = ((source << PRCM_CLKOCR_CLKOSEL1_SHIFT) |
   (div << PRCM_CLKOCR_CLKODIV1_SHIFT));
 }
 bits &= mask;

 spin_lock_irqsave(&clkout_lock, flags);

 val = readl(PRCM_CLKOCR);
 if (val & div_mask) {
  if (div) {
   if ((val & mask) != bits) {
    r = -EBUSY;
    goto unlock_and_return;
   }
  } else {
   if ((val & mask & ~div_mask) != bits) {
    r = -EINVAL;
    goto unlock_and_return;
   }
  }
 }
 writel((bits | (val & ~mask)), PRCM_CLKOCR);
 requests[clkout] += (div ? 1 : -1);

unlock_and_return:
 spin_unlock_irqrestore(&clkout_lock, flags);

 return r;
}
