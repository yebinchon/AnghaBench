
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct net_device* vif_to_ndev (struct wil6210_vif*) ;
 int wil_vif_deinit (struct wil6210_vif*) ;

void wil_vif_free(struct wil6210_vif *vif)
{
 struct net_device *ndev = vif_to_ndev(vif);

 wil_vif_deinit(vif);
 free_netdev(ndev);
}
