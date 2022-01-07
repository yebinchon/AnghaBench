
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct TYPE_3__ {int offloaded_macs; TYPE_2__ neigh_nb; int neigh_off_list; int neigh_off_lock; int ipv4_off_list; int ipv4_off_lock; int mac_off_ids; } ;
struct nfp_flower_priv {TYPE_1__ tun; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int INIT_LIST_HEAD (int *) ;
 int ida_init (int *) ;
 int mutex_init (int *) ;
 int nfp_check_rhashtable_empty ;
 int nfp_tun_neigh_event_handler ;
 int offloaded_macs_params ;
 int register_netevent_notifier (TYPE_2__*) ;
 int rhashtable_free_and_destroy (int *,int ,int *) ;
 int rhashtable_init (int *,int *) ;
 int spin_lock_init (int *) ;

int nfp_tunnel_config_start(struct nfp_app *app)
{
 struct nfp_flower_priv *priv = app->priv;
 int err;


 err = rhashtable_init(&priv->tun.offloaded_macs,
         &offloaded_macs_params);
 if (err)
  return err;

 ida_init(&priv->tun.mac_off_ids);


 mutex_init(&priv->tun.ipv4_off_lock);
 INIT_LIST_HEAD(&priv->tun.ipv4_off_list);


 spin_lock_init(&priv->tun.neigh_off_lock);
 INIT_LIST_HEAD(&priv->tun.neigh_off_list);
 priv->tun.neigh_nb.notifier_call = nfp_tun_neigh_event_handler;

 err = register_netevent_notifier(&priv->tun.neigh_nb);
 if (err) {
  rhashtable_free_and_destroy(&priv->tun.offloaded_macs,
         nfp_check_rhashtable_empty, ((void*)0));
  return err;
 }

 return 0;
}
