
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_priv_data {int phy_iface; int clk_enabled; int clk_mac_speed; int mac_clk_tx; int pclk_mac; int aclk_mac; int clk_phy; int clk_mac_refout; int clk_mac_ref; int mac_clk_rx; } ;


 int IS_ERR (int ) ;
 int PHY_INTERFACE_MODE_RMII ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int mdelay (int) ;

__attribute__((used)) static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
{
 int phy_iface = bsp_priv->phy_iface;

 if (enable) {
  if (!bsp_priv->clk_enabled) {
   if (phy_iface == PHY_INTERFACE_MODE_RMII) {
    if (!IS_ERR(bsp_priv->mac_clk_rx))
     clk_prepare_enable(
      bsp_priv->mac_clk_rx);

    if (!IS_ERR(bsp_priv->clk_mac_ref))
     clk_prepare_enable(
      bsp_priv->clk_mac_ref);

    if (!IS_ERR(bsp_priv->clk_mac_refout))
     clk_prepare_enable(
      bsp_priv->clk_mac_refout);
   }

   if (!IS_ERR(bsp_priv->clk_phy))
    clk_prepare_enable(bsp_priv->clk_phy);

   if (!IS_ERR(bsp_priv->aclk_mac))
    clk_prepare_enable(bsp_priv->aclk_mac);

   if (!IS_ERR(bsp_priv->pclk_mac))
    clk_prepare_enable(bsp_priv->pclk_mac);

   if (!IS_ERR(bsp_priv->mac_clk_tx))
    clk_prepare_enable(bsp_priv->mac_clk_tx);

   if (!IS_ERR(bsp_priv->clk_mac_speed))
    clk_prepare_enable(bsp_priv->clk_mac_speed);





   mdelay(5);
   bsp_priv->clk_enabled = 1;
  }
 } else {
  if (bsp_priv->clk_enabled) {
   if (phy_iface == PHY_INTERFACE_MODE_RMII) {
    clk_disable_unprepare(bsp_priv->mac_clk_rx);

    clk_disable_unprepare(bsp_priv->clk_mac_ref);

    clk_disable_unprepare(bsp_priv->clk_mac_refout);
   }

   clk_disable_unprepare(bsp_priv->clk_phy);

   clk_disable_unprepare(bsp_priv->aclk_mac);

   clk_disable_unprepare(bsp_priv->pclk_mac);

   clk_disable_unprepare(bsp_priv->mac_clk_tx);

   clk_disable_unprepare(bsp_priv->clk_mac_speed);




   bsp_priv->clk_enabled = 0;
  }
 }

 return 0;
}
