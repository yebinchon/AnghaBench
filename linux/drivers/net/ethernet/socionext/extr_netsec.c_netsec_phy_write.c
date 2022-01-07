
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netsec_priv {int freq; } ;
struct mii_bus {struct netsec_priv* priv; } ;


 int ETIMEDOUT ;
 int GMAC_REG_GAR ;
 int GMAC_REG_GDR ;
 int GMAC_REG_SHIFT_CR_GAR ;
 int MII_PHYSID1 ;
 int NETSEC_GMAC_GAR_REG_GB ;
 int NETSEC_GMAC_GAR_REG_GW ;
 int NETSEC_GMAC_GAR_REG_SHIFT_GR ;
 int NETSEC_GMAC_GAR_REG_SHIFT_PA ;
 int netsec_clk_type (int ) ;
 int netsec_mac_wait_while_busy (struct netsec_priv*,int ,int) ;
 scalar_t__ netsec_mac_write (struct netsec_priv*,int ,int) ;
 int netsec_phy_read (struct mii_bus*,int,int ) ;

__attribute__((used)) static int netsec_phy_write(struct mii_bus *bus,
       int phy_addr, int reg, u16 val)
{
 int status;
 struct netsec_priv *priv = bus->priv;

 if (netsec_mac_write(priv, GMAC_REG_GDR, val))
  return -ETIMEDOUT;
 if (netsec_mac_write(priv, GMAC_REG_GAR,
        phy_addr << NETSEC_GMAC_GAR_REG_SHIFT_PA |
        reg << NETSEC_GMAC_GAR_REG_SHIFT_GR |
        NETSEC_GMAC_GAR_REG_GW | NETSEC_GMAC_GAR_REG_GB |
        (netsec_clk_type(priv->freq) <<
         GMAC_REG_SHIFT_CR_GAR)))
  return -ETIMEDOUT;

 status = netsec_mac_wait_while_busy(priv, GMAC_REG_GAR,
         NETSEC_GMAC_GAR_REG_GB);
 netsec_phy_read(bus, phy_addr, MII_PHYSID1);

 return status;
}
