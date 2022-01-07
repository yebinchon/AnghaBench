
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * skb; } ;
struct wil_status_ring {TYPE_1__ rx_data; } ;


 int kfree_skb (int *) ;

__attribute__((used)) static void wil_rx_data_free(struct wil_status_ring *sring)
{
 if (!sring)
  return;

 kfree_skb(sring->rx_data.skb);
 sring->rx_data.skb = ((void*)0);
}
