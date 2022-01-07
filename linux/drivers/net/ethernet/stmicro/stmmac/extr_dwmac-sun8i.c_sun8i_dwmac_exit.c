
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_priv_data {scalar_t__ regulator; int tx_clk; int rst_ephy; scalar_t__ internal_phy_powered; scalar_t__ mux_handle; TYPE_1__* variant; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ soc_has_internal_phy; } ;


 int clk_disable_unprepare (int ) ;
 int mdio_mux_uninit (scalar_t__) ;
 int regulator_disable (scalar_t__) ;
 int reset_control_put (int ) ;
 int sun8i_dwmac_unpower_internal_phy (struct sunxi_priv_data*) ;
 int sun8i_dwmac_unset_syscon (struct sunxi_priv_data*) ;

__attribute__((used)) static void sun8i_dwmac_exit(struct platform_device *pdev, void *priv)
{
 struct sunxi_priv_data *gmac = priv;

 if (gmac->variant->soc_has_internal_phy) {

  if (gmac->mux_handle)
   mdio_mux_uninit(gmac->mux_handle);
  if (gmac->internal_phy_powered)
   sun8i_dwmac_unpower_internal_phy(gmac);
 }

 sun8i_dwmac_unset_syscon(gmac);

 reset_control_put(gmac->rst_ephy);

 clk_disable_unprepare(gmac->tx_clk);

 if (gmac->regulator)
  regulator_disable(gmac->regulator);
}
