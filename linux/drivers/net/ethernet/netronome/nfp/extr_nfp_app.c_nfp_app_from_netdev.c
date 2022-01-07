
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {struct nfp_app* app; } ;
struct nfp_net {struct nfp_app* app; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;


 int WARN (int,char*) ;
 void* netdev_priv (struct net_device*) ;
 scalar_t__ nfp_netdev_is_nfp_net (struct net_device*) ;
 scalar_t__ nfp_netdev_is_nfp_repr (struct net_device*) ;

struct nfp_app *nfp_app_from_netdev(struct net_device *netdev)
{
 if (nfp_netdev_is_nfp_net(netdev)) {
  struct nfp_net *nn = netdev_priv(netdev);

  return nn->app;
 }

 if (nfp_netdev_is_nfp_repr(netdev)) {
  struct nfp_repr *repr = netdev_priv(netdev);

  return repr->app;
 }

 WARN(1, "Unknown netdev type for nfp_app\n");

 return ((void*)0);
}
