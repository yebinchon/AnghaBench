
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sxgbe_priv_data {TYPE_2__* hw; scalar_t__ ioaddr; } ;
struct TYPE_3__ {scalar_t__ addr; } ;
struct TYPE_4__ {TYPE_1__ mii; } ;


 int sxgbe_mdio_ctrl_data (struct sxgbe_priv_data*,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sxgbe_mdio_c45(struct sxgbe_priv_data *sp, u32 cmd, int phyaddr,
      int phyreg, u16 phydata)
{
 u32 reg;


 reg = ((phyreg >> 16) & 0x1f) << 21;
 reg |= (phyaddr << 16) | (phyreg & 0xffff);
 writel(reg, sp->ioaddr + sp->hw->mii.addr);

 sxgbe_mdio_ctrl_data(sp, cmd, phydata);
}
