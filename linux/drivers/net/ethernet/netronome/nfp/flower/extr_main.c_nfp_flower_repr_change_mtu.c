
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfp_repr {TYPE_4__* dst; TYPE_1__* port; } ;
struct TYPE_10__ {int ack; int requested_val; int lock; int wait_q; int portnum; } ;
struct nfp_flower_priv {int flower_ext_feats; TYPE_5__ mtu_conf; } ;
struct nfp_app {int cpp; struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int port_id; } ;
struct TYPE_8__ {TYPE_2__ port_info; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct TYPE_6__ {scalar_t__ type; } ;


 int EINVAL ;
 int EIO ;
 int NFP_FL_NBI_MTU_SETTING ;
 int NFP_FL_REPLY_TIMEOUT ;
 scalar_t__ NFP_PORT_PHYS_PORT ;
 struct nfp_repr* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int nfp_err (int ,char*) ;
 int nfp_flower_check_ack (struct nfp_flower_priv*) ;
 int nfp_flower_cmsg_portmod (struct nfp_repr*,int ,int,int) ;
 int nfp_warn (int ,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int
nfp_flower_repr_change_mtu(struct nfp_app *app, struct net_device *netdev,
      int new_mtu)
{
 struct nfp_flower_priv *app_priv = app->priv;
 struct nfp_repr *repr = netdev_priv(netdev);
 int err;


 if (repr->port->type != NFP_PORT_PHYS_PORT)
  return 0;

 if (!(app_priv->flower_ext_feats & NFP_FL_NBI_MTU_SETTING)) {
  nfp_err(app->cpp, "Physical port MTU setting not supported\n");
  return -EINVAL;
 }

 spin_lock_bh(&app_priv->mtu_conf.lock);
 app_priv->mtu_conf.ack = 0;
 app_priv->mtu_conf.requested_val = new_mtu;
 app_priv->mtu_conf.portnum = repr->dst->u.port_info.port_id;
 spin_unlock_bh(&app_priv->mtu_conf.lock);

 err = nfp_flower_cmsg_portmod(repr, netif_carrier_ok(netdev), new_mtu,
          1);
 if (err) {
  spin_lock_bh(&app_priv->mtu_conf.lock);
  app_priv->mtu_conf.requested_val = 0;
  spin_unlock_bh(&app_priv->mtu_conf.lock);
  return err;
 }


 if (!wait_event_timeout(app_priv->mtu_conf.wait_q,
    nfp_flower_check_ack(app_priv),
    NFP_FL_REPLY_TIMEOUT)) {
  spin_lock_bh(&app_priv->mtu_conf.lock);
  app_priv->mtu_conf.requested_val = 0;
  spin_unlock_bh(&app_priv->mtu_conf.lock);
  nfp_warn(app->cpp, "MTU change not verified with fw\n");
  return -EIO;
 }

 return 0;
}
