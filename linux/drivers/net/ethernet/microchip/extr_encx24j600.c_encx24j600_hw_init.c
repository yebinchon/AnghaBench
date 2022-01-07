
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct encx24j600_priv {int hw_enabled; scalar_t__ autoneg; int rxfilter; scalar_t__ full_duplex; } ;


 scalar_t__ AUTONEG_DISABLE ;
 int EIDLED ;
 int FULDPX ;
 int MACON1 ;
 int MACON2 ;
 int MACON2_DEFER ;
 int MACON2_RSV1 ;
 int MAIPG ;
 int MAMXFL ;
 int MAX_FRAMELEN ;
 int PADCFG0 ;
 int PADCFG2 ;
 int PHANA ;
 int PHANA_DEFAULT ;
 int RXFILTER_NORMAL ;
 int TXCRCEN ;
 int encx24j600_check_link_status (struct encx24j600_priv*) ;
 int encx24j600_dump_config (struct encx24j600_priv*,char*) ;
 int encx24j600_hw_init_rx (struct encx24j600_priv*) ;
 int encx24j600_hw_init_tx (struct encx24j600_priv*) ;
 int encx24j600_set_bits (struct encx24j600_priv*,int ,int) ;
 int encx24j600_set_rxfilter_mode (struct encx24j600_priv*) ;
 int encx24j600_update_phcon1 (struct encx24j600_priv*) ;
 int encx24j600_update_reg (struct encx24j600_priv*,int ,int,int) ;
 int encx24j600_write_phy (struct encx24j600_priv*,int ,int ) ;
 int encx24j600_write_reg (struct encx24j600_priv*,int ,int) ;
 scalar_t__ netif_msg_hw (struct encx24j600_priv*) ;

__attribute__((used)) static int encx24j600_hw_init(struct encx24j600_priv *priv)
{
 int ret = 0;
 u16 macon2;

 priv->hw_enabled = 0;





 encx24j600_update_reg(priv, EIDLED, 0xff00, 0xcb00);


 encx24j600_write_reg(priv, MACON1, 0x9);


 encx24j600_write_reg(priv, MAIPG, 0x0c12);


 encx24j600_write_phy(priv, PHANA, PHANA_DEFAULT);

 encx24j600_update_phcon1(priv);
 encx24j600_check_link_status(priv);

 macon2 = MACON2_RSV1 | TXCRCEN | PADCFG0 | PADCFG2 | MACON2_DEFER;
 if ((priv->autoneg == AUTONEG_DISABLE) && priv->full_duplex)
  macon2 |= FULDPX;

 encx24j600_set_bits(priv, MACON2, macon2);

 priv->rxfilter = RXFILTER_NORMAL;
 encx24j600_set_rxfilter_mode(priv);


 encx24j600_write_reg(priv, MAMXFL, MAX_FRAMELEN);


 encx24j600_hw_init_tx(priv);


 encx24j600_hw_init_rx(priv);

 if (netif_msg_hw(priv))
  encx24j600_dump_config(priv, "Hw is initialized");

 return ret;
}
