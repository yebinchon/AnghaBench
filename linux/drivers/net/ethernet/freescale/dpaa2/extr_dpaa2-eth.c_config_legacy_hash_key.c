
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpni_rx_tc_dist_cfg {int dist_mode; int dist_size; int key_cfg_iova; } ;
struct dpaa2_eth_priv {int mc_token; int mc_io; TYPE_2__* net_dev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
typedef int dist_cfg ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DPNI_DIST_MODE_HASH ;
 int dev_err (struct device*,char*) ;
 int dpaa2_eth_queue_count (struct dpaa2_eth_priv*) ;
 int dpni_set_rx_tc_dist (int ,int ,int ,int ,struct dpni_rx_tc_dist_cfg*) ;
 int memset (struct dpni_rx_tc_dist_cfg*,int ,int) ;

__attribute__((used)) static int config_legacy_hash_key(struct dpaa2_eth_priv *priv, dma_addr_t key)
{
 struct device *dev = priv->net_dev->dev.parent;
 struct dpni_rx_tc_dist_cfg dist_cfg;
 int err;

 memset(&dist_cfg, 0, sizeof(dist_cfg));

 dist_cfg.key_cfg_iova = key;
 dist_cfg.dist_size = dpaa2_eth_queue_count(priv);
 dist_cfg.dist_mode = DPNI_DIST_MODE_HASH;

 err = dpni_set_rx_tc_dist(priv->mc_io, 0, priv->mc_token, 0, &dist_cfg);
 if (err)
  dev_err(dev, "dpni_set_rx_tc_dist failed\n");

 return err;
}
