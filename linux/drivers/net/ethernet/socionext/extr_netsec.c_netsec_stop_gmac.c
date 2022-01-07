
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netsec_priv {int dummy; } ;


 int GMAC_REG_OMR ;
 int NETSEC_GMAC_OMR_REG_SR ;
 int NETSEC_GMAC_OMR_REG_ST ;
 int NETSEC_REG_NRM_RX_INTEN_CLR ;
 int NETSEC_REG_NRM_TX_INTEN_CLR ;
 int netsec_mac_read (struct netsec_priv*,int ,int *) ;
 int netsec_mac_write (struct netsec_priv*,int ,int ) ;
 int netsec_write (struct netsec_priv*,int ,int ) ;

__attribute__((used)) static int netsec_stop_gmac(struct netsec_priv *priv)
{
 u32 value;
 int ret;

 ret = netsec_mac_read(priv, GMAC_REG_OMR, &value);
 if (ret)
  return ret;
 value &= ~NETSEC_GMAC_OMR_REG_SR;
 value &= ~NETSEC_GMAC_OMR_REG_ST;


 netsec_write(priv, NETSEC_REG_NRM_RX_INTEN_CLR, ~0);
 netsec_write(priv, NETSEC_REG_NRM_TX_INTEN_CLR, ~0);

 return netsec_mac_write(priv, GMAC_REG_OMR, value);
}
