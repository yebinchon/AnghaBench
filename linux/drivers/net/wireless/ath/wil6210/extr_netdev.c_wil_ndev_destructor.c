
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int dummy; } ;
struct net_device {int dummy; } ;


 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 int wil_vif_deinit (struct wil6210_vif*) ;

__attribute__((used)) static void wil_ndev_destructor(struct net_device *ndev)
{
 struct wil6210_vif *vif = ndev_to_vif(ndev);

 wil_vif_deinit(vif);
}
