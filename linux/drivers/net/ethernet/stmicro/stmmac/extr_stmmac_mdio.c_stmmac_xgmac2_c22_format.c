
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {scalar_t__ ioaddr; TYPE_2__* hw; } ;
struct TYPE_3__ {unsigned int data; } ;
struct TYPE_4__ {TYPE_1__ mii; } ;


 int BIT (int) ;
 int EBUSY ;
 int ENODEV ;
 int MII_XGMAC_BUSY ;
 int MII_XGMAC_C22P_MASK ;
 int MII_XGMAC_MAX_C22ADDR ;
 scalar_t__ XGMAC_MDIO_C22P ;
 int readl (scalar_t__) ;
 scalar_t__ readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int stmmac_xgmac2_c22_format(struct stmmac_priv *priv, int phyaddr,
        int phyreg, u32 *hw_addr)
{
 unsigned int mii_data = priv->hw->mii.data;
 u32 tmp;


 if (phyaddr > MII_XGMAC_MAX_C22ADDR)
  return -ENODEV;

 if (readl_poll_timeout(priv->ioaddr + mii_data, tmp,
          !(tmp & MII_XGMAC_BUSY), 100, 10000))
  return -EBUSY;


 tmp = readl(priv->ioaddr + XGMAC_MDIO_C22P);
 tmp &= ~MII_XGMAC_C22P_MASK;
 tmp |= BIT(phyaddr);
 writel(tmp, priv->ioaddr + XGMAC_MDIO_C22P);

 *hw_addr = (phyaddr << 16) | (phyreg & 0x1f);
 return 0;
}
