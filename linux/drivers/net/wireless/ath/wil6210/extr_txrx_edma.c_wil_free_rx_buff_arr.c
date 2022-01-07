
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wil_ring {int dummy; } ;
struct TYPE_2__ {int * buff_arr; } ;
struct wil6210_priv {TYPE_1__ rx_buff_mgmt; struct wil_ring ring_rx; } ;


 int kfree (int *) ;
 int wil_move_all_rx_buff_to_free_list (struct wil6210_priv*,struct wil_ring*) ;

__attribute__((used)) static void wil_free_rx_buff_arr(struct wil6210_priv *wil)
{
 struct wil_ring *ring = &wil->ring_rx;

 if (!wil->rx_buff_mgmt.buff_arr)
  return;




 wil_move_all_rx_buff_to_free_list(wil, ring);

 kfree(wil->rx_buff_mgmt.buff_arr);
 wil->rx_buff_mgmt.buff_arr = ((void*)0);
}
