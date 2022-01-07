
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int mutex; } ;
struct net_device {int dummy; } ;


 int mutex_unlock (int *) ;
 struct wil6210_priv* ndev_to_wil (struct net_device*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;

__attribute__((used)) static void wil_ethtoolops_complete(struct net_device *ndev)
{
 struct wil6210_priv *wil = ndev_to_wil(ndev);

 wil_dbg_misc(wil, "ethtoolops_complete\n");

 mutex_unlock(&wil->mutex);
}
