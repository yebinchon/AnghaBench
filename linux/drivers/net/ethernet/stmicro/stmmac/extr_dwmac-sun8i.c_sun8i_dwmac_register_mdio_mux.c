
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sunxi_priv_data {int mux_handle; } ;
struct stmmac_priv {int mii; TYPE_2__* device; TYPE_1__* plat; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {struct sunxi_priv_data* bsp_priv; } ;


 int ENODEV ;
 int mdio_mux_init (TYPE_2__*,struct device_node*,int ,int *,struct stmmac_priv*,int ) ;
 int mdio_mux_syscon_switch_fn ;
 struct device_node* of_get_child_by_name (int ,char*) ;

__attribute__((used)) static int sun8i_dwmac_register_mdio_mux(struct stmmac_priv *priv)
{
 int ret;
 struct device_node *mdio_mux;
 struct sunxi_priv_data *gmac = priv->plat->bsp_priv;

 mdio_mux = of_get_child_by_name(priv->device->of_node, "mdio-mux");
 if (!mdio_mux)
  return -ENODEV;

 ret = mdio_mux_init(priv->device, mdio_mux, mdio_mux_syscon_switch_fn,
       &gmac->mux_handle, priv, priv->mii);
 return ret;
}
