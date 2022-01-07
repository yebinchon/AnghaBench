
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gswip_priv {int port_vlan_filter; } ;
struct dsa_switch {struct gswip_priv* priv; } ;
struct TYPE_2__ {struct net_device* bridge_dev; } ;


 int BIT (int) ;
 int EIO ;
 int GSWIP_PCE_PCTRL_0_TVM ;
 int GSWIP_PCE_PCTRL_0p (int) ;
 int GSWIP_PCE_VCTRL (int) ;
 int GSWIP_PCE_VCTRL_UVR ;
 int GSWIP_PCE_VCTRL_VEMR ;
 int GSWIP_PCE_VCTRL_VIMR ;
 int GSWIP_PCE_VCTRL_VSR ;
 TYPE_1__* dsa_to_port (struct dsa_switch*,int) ;
 int gswip_switch_mask (struct gswip_priv*,int,int,int ) ;

__attribute__((used)) static int gswip_port_vlan_filtering(struct dsa_switch *ds, int port,
         bool vlan_filtering)
{
 struct gswip_priv *priv = ds->priv;
 struct net_device *bridge = dsa_to_port(ds, port)->bridge_dev;


 if (!!(priv->port_vlan_filter & BIT(port)) != vlan_filtering && bridge)
  return -EIO;

 if (vlan_filtering) {

  gswip_switch_mask(priv,
      GSWIP_PCE_VCTRL_VSR,
      GSWIP_PCE_VCTRL_UVR | GSWIP_PCE_VCTRL_VIMR |
      GSWIP_PCE_VCTRL_VEMR,
      GSWIP_PCE_VCTRL(port));
  gswip_switch_mask(priv, GSWIP_PCE_PCTRL_0_TVM, 0,
      GSWIP_PCE_PCTRL_0p(port));
 } else {

  gswip_switch_mask(priv,
      GSWIP_PCE_VCTRL_UVR | GSWIP_PCE_VCTRL_VIMR |
      GSWIP_PCE_VCTRL_VEMR,
      GSWIP_PCE_VCTRL_VSR,
      GSWIP_PCE_VCTRL(port));
  gswip_switch_mask(priv, 0, GSWIP_PCE_PCTRL_0_TVM,
      GSWIP_PCE_PCTRL_0p(port));
 }

 return 0;
}
