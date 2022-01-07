
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct dpni_pools_cfg {int num_dpbp; TYPE_4__* pools; } ;
struct dpni_error_cfg {int set_frame_annotation; int error_action; int errors; } ;
struct dpaa2_eth_priv {int num_fqs; int tx_qdid; int mc_token; int mc_io; TYPE_5__* fq; TYPE_3__* dpbp_dev; struct net_device* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_11__ {int type; } ;
struct TYPE_10__ {int buffer_size; scalar_t__ backup_pool; int dpbp_id; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_9__ {TYPE_2__ obj_desc; } ;


 int DPAA2_ETH_RX_BUF_SIZE ;
 int DPAA2_FAS_RX_ERR_MASK ;
 int DPAA2_RXH_DEFAULT ;


 int DPNI_ERROR_ACTION_DISCARD ;
 int DPNI_QUEUE_TX ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int dev_err (struct device*,char*,...) ;
 int dpaa2_eth_set_default_cls (struct dpaa2_eth_priv*) ;
 int dpaa2_eth_set_hash (struct net_device*,int ) ;
 int dpni_get_qdid (int ,int ,int ,int ,int *) ;
 int dpni_set_errors_behavior (int ,int ,int ,struct dpni_error_cfg*) ;
 int dpni_set_pools (int ,int ,int ,struct dpni_pools_cfg*) ;
 int setup_rx_flow (struct dpaa2_eth_priv*,TYPE_5__*) ;
 int setup_tx_flow (struct dpaa2_eth_priv*,TYPE_5__*) ;

__attribute__((used)) static int bind_dpni(struct dpaa2_eth_priv *priv)
{
 struct net_device *net_dev = priv->net_dev;
 struct device *dev = net_dev->dev.parent;
 struct dpni_pools_cfg pools_params;
 struct dpni_error_cfg err_cfg;
 int err = 0;
 int i;

 pools_params.num_dpbp = 1;
 pools_params.pools[0].dpbp_id = priv->dpbp_dev->obj_desc.id;
 pools_params.pools[0].backup_pool = 0;
 pools_params.pools[0].buffer_size = DPAA2_ETH_RX_BUF_SIZE;
 err = dpni_set_pools(priv->mc_io, 0, priv->mc_token, &pools_params);
 if (err) {
  dev_err(dev, "dpni_set_pools() failed\n");
  return err;
 }




 err = dpaa2_eth_set_hash(net_dev, DPAA2_RXH_DEFAULT);
 if (err && err != -EOPNOTSUPP)
  dev_err(dev, "Failed to configure hashing\n");




 err = dpaa2_eth_set_default_cls(priv);
 if (err && err != -EOPNOTSUPP)
  dev_err(dev, "Failed to configure Rx classification key\n");


 err_cfg.errors = DPAA2_FAS_RX_ERR_MASK;
 err_cfg.set_frame_annotation = 1;
 err_cfg.error_action = DPNI_ERROR_ACTION_DISCARD;
 err = dpni_set_errors_behavior(priv->mc_io, 0, priv->mc_token,
           &err_cfg);
 if (err) {
  dev_err(dev, "dpni_set_errors_behavior failed\n");
  return err;
 }


 for (i = 0; i < priv->num_fqs; i++) {
  switch (priv->fq[i].type) {
  case 129:
   err = setup_rx_flow(priv, &priv->fq[i]);
   break;
  case 128:
   err = setup_tx_flow(priv, &priv->fq[i]);
   break;
  default:
   dev_err(dev, "Invalid FQ type %d\n", priv->fq[i].type);
   return -EINVAL;
  }
  if (err)
   return err;
 }

 err = dpni_get_qdid(priv->mc_io, 0, priv->mc_token,
       DPNI_QUEUE_TX, &priv->tx_qdid);
 if (err) {
  dev_err(dev, "dpni_get_qdid() failed\n");
  return err;
 }

 return 0;
}
