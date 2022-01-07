
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dpni_link_cfg {int options; int member_0; } ;
struct TYPE_4__ {int options; } ;
struct dpaa2_eth_priv {TYPE_1__ link_state; int mc_token; int mc_io; TYPE_3__* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;


 int DPNI_LINK_OPT_ASYM_PAUSE ;
 int DPNI_LINK_OPT_PAUSE ;
 int dev_err (struct device*,char*) ;
 int dpni_get_link_cfg (int ,int ,int ,struct dpni_link_cfg*) ;
 int dpni_set_link_cfg (int ,int ,int ,struct dpni_link_cfg*) ;

__attribute__((used)) static int set_pause(struct dpaa2_eth_priv *priv)
{
 struct device *dev = priv->net_dev->dev.parent;
 struct dpni_link_cfg link_cfg = {0};
 int err;


 err = dpni_get_link_cfg(priv->mc_io, 0, priv->mc_token, &link_cfg);
 if (err) {
  dev_err(dev, "dpni_get_link_cfg() failed\n");
  return err;
 }


 link_cfg.options |= DPNI_LINK_OPT_PAUSE;
 link_cfg.options &= ~DPNI_LINK_OPT_ASYM_PAUSE;
 err = dpni_set_link_cfg(priv->mc_io, 0, priv->mc_token, &link_cfg);
 if (err) {
  dev_err(dev, "dpni_set_link_cfg() failed\n");
  return err;
 }

 priv->link_state.options = link_cfg.options;

 return 0;
}
