
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {int app_priv; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;


 int kfree (int ) ;
 struct nfp_repr* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
nfp_flower_repr_netdev_clean(struct nfp_app *app, struct net_device *netdev)
{
 struct nfp_repr *repr = netdev_priv(netdev);

 kfree(repr->app_priv);
}
