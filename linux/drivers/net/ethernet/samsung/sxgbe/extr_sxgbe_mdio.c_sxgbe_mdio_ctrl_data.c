
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sxgbe_priv_data {int clk_csr; TYPE_2__* hw; scalar_t__ ioaddr; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ mii; } ;


 int SXGBE_MII_BUSY ;
 int SXGBE_SMA_SKIP_ADDRFRM ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sxgbe_mdio_ctrl_data(struct sxgbe_priv_data *sp, u32 cmd,
     u16 phydata)
{
 u32 reg = phydata;

 reg |= (cmd << 16) | SXGBE_SMA_SKIP_ADDRFRM |
        ((sp->clk_csr & 0x7) << 19) | SXGBE_MII_BUSY;
 writel(reg, sp->ioaddr + sp->hw->mii.data);
}
