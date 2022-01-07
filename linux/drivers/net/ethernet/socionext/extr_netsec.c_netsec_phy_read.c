
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netsec_priv {int freq; } ;
struct mii_bus {struct netsec_priv* priv; } ;


 int ETIMEDOUT ;
 int GMAC_REG_GAR ;
 int GMAC_REG_GDR ;
 int GMAC_REG_SHIFT_CR_GAR ;
 int NETSEC_GMAC_GAR_REG_GB ;
 int NETSEC_GMAC_GAR_REG_SHIFT_GR ;
 int NETSEC_GMAC_GAR_REG_SHIFT_PA ;
 int netsec_clk_type (int ) ;
 int netsec_mac_read (struct netsec_priv*,int ,int*) ;
 int netsec_mac_wait_while_busy (struct netsec_priv*,int ,int) ;
 scalar_t__ netsec_mac_write (struct netsec_priv*,int ,int) ;

__attribute__((used)) static int netsec_phy_read(struct mii_bus *bus, int phy_addr, int reg_addr)
{
 struct netsec_priv *priv = bus->priv;
 u32 data;
 int ret;

 if (netsec_mac_write(priv, GMAC_REG_GAR, NETSEC_GMAC_GAR_REG_GB |
        phy_addr << NETSEC_GMAC_GAR_REG_SHIFT_PA |
        reg_addr << NETSEC_GMAC_GAR_REG_SHIFT_GR |
        (netsec_clk_type(priv->freq) <<
         GMAC_REG_SHIFT_CR_GAR)))
  return -ETIMEDOUT;

 ret = netsec_mac_wait_while_busy(priv, GMAC_REG_GAR,
      NETSEC_GMAC_GAR_REG_GB);
 if (ret)
  return ret;

 ret = netsec_mac_read(priv, GMAC_REG_GDR, &data);
 if (ret)
  return ret;

 return data;
}
