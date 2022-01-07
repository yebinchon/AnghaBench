
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int mac_regs; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int MII_BMCR ;
 scalar_t__ MII_REG_BITS_IS_ON (int ,int ,int ) ;
 int MII_REG_BITS_ON (int ,int ,int ) ;

__attribute__((used)) static void mii_set_auto_on(struct velocity_info *vptr)
{
 if (MII_REG_BITS_IS_ON(BMCR_ANENABLE, MII_BMCR, vptr->mac_regs))
  MII_REG_BITS_ON(BMCR_ANRESTART, MII_BMCR, vptr->mac_regs);
 else
  MII_REG_BITS_ON(BMCR_ANENABLE, MII_BMCR, vptr->mac_regs);
}
