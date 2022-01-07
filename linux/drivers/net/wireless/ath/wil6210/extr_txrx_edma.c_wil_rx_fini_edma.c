
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring {int dummy; } ;
struct wil6210_priv {int num_rx_status_rings; int * srings; struct wil_ring ring_rx; } ;


 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_free_rx_buff_arr (struct wil6210_priv*) ;
 int wil_ring_free_edma (struct wil6210_priv*,struct wil_ring*) ;
 int wil_rx_data_free (int *) ;
 int wil_sring_free (struct wil6210_priv*,int *) ;

__attribute__((used)) static void wil_rx_fini_edma(struct wil6210_priv *wil)
{
 struct wil_ring *ring = &wil->ring_rx;
 int i;

 wil_dbg_misc(wil, "rx_fini_edma\n");

 wil_ring_free_edma(wil, ring);

 for (i = 0; i < wil->num_rx_status_rings; i++) {
  wil_rx_data_free(&wil->srings[i]);
  wil_sring_free(wil, &wil->srings[i]);
 }

 wil_free_rx_buff_arr(wil);
}
