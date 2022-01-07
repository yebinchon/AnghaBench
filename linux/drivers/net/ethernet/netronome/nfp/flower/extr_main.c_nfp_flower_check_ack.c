
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ack; int lock; } ;
struct nfp_flower_priv {TYPE_1__ mtu_conf; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool nfp_flower_check_ack(struct nfp_flower_priv *app_priv)
{
 bool ret;

 spin_lock_bh(&app_priv->mtu_conf.lock);
 ret = app_priv->mtu_conf.ack;
 spin_unlock_bh(&app_priv->mtu_conf.lock);

 return ret;
}
