
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gbe_slave {int dummy; } ;


 scalar_t__ DEVICE_EMACSL_RESET_POLL_COUNT ;
 int GBE_REG_ADDR (struct gbe_slave*,int ,int ) ;
 int GMACSL_RET_WARN_RESET_INCOMPLETE ;
 scalar_t__ SOFT_RESET ;
 scalar_t__ SOFT_RESET_MASK ;
 int emac_regs ;
 scalar_t__ readl (int ) ;
 int soft_reset ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static int gbe_port_reset(struct gbe_slave *slave)
{
 u32 i, v;


 writel(SOFT_RESET, GBE_REG_ADDR(slave, emac_regs, soft_reset));


 for (i = 0; i < DEVICE_EMACSL_RESET_POLL_COUNT; i++) {
  v = readl(GBE_REG_ADDR(slave, emac_regs, soft_reset));
  if ((v & SOFT_RESET_MASK) != SOFT_RESET)
   return 0;
 }


 return GMACSL_RET_WARN_RESET_INCOMPLETE;
}
