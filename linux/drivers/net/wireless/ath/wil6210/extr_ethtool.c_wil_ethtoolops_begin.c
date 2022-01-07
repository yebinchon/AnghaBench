
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int mutex; } ;
struct net_device {int dummy; } ;


 int mutex_lock (int *) ;
 struct wil6210_priv* ndev_to_wil (struct net_device*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;

__attribute__((used)) static int wil_ethtoolops_begin(struct net_device *ndev)
{
 struct wil6210_priv *wil = ndev_to_wil(ndev);

 mutex_lock(&wil->mutex);

 wil_dbg_misc(wil, "ethtoolops_begin\n");

 return 0;
}
