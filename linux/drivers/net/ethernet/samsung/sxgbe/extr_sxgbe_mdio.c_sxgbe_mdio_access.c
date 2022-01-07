
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sxgbe_priv_data {int ioaddr; TYPE_1__* hw; } ;
struct mii_regs {int data; } ;
struct TYPE_2__ {struct mii_regs mii; } ;


 int ENODEV ;
 int MII_ADDR_C45 ;
 int sxgbe_mdio_busy_wait (int ,int ) ;
 int sxgbe_mdio_c22 (struct sxgbe_priv_data*,int ,int,int,int ) ;
 int sxgbe_mdio_c45 (struct sxgbe_priv_data*,int ,int,int,int ) ;

__attribute__((used)) static int sxgbe_mdio_access(struct sxgbe_priv_data *sp, u32 cmd, int phyaddr,
        int phyreg, u16 phydata)
{
 const struct mii_regs *mii = &sp->hw->mii;
 int rc;

 rc = sxgbe_mdio_busy_wait(sp->ioaddr, mii->data);
 if (rc < 0)
  return rc;

 if (phyreg & MII_ADDR_C45) {
  sxgbe_mdio_c45(sp, cmd, phyaddr, phyreg, phydata);
 } else {

  if (phyaddr >= 4)
   return -ENODEV;

  sxgbe_mdio_c22(sp, cmd, phyaddr, phyreg, phydata);
 }

 return sxgbe_mdio_busy_wait(sp->ioaddr, mii->data);
}
