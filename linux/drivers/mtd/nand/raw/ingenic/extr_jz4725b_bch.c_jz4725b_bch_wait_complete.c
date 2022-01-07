
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ingenic_ecc {scalar_t__ base; } ;


 scalar_t__ BCH_BHINT ;
 int BCH_TIMEOUT_US ;
 int readl_relaxed_poll_timeout (scalar_t__,unsigned int,unsigned int,int ,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int jz4725b_bch_wait_complete(struct ingenic_ecc *bch, unsigned int irq,
         u32 *status)
{
 u32 reg;
 int ret;







 ret = readl_relaxed_poll_timeout(bch->base + BCH_BHINT, reg,
      reg & irq, 0, BCH_TIMEOUT_US);
 if (ret)
  return ret;

 if (status)
  *status = reg;

 writel(reg, bch->base + BCH_BHINT);

 return 0;
}
