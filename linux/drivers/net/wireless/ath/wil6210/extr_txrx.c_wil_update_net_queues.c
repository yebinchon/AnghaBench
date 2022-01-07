
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring {int dummy; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int net_queue_lock; } ;


 int __wil_update_net_queues (struct wil6210_priv*,struct wil6210_vif*,struct wil_ring*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void wil_update_net_queues(struct wil6210_priv *wil, struct wil6210_vif *vif,
      struct wil_ring *ring, bool check_stop)
{
 spin_lock(&wil->net_queue_lock);
 __wil_update_net_queues(wil, vif, ring, check_stop);
 spin_unlock(&wil->net_queue_lock);
}
