
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring {scalar_t__ va; } ;
struct wil6210_priv {struct wil_ring ring_rx; } ;


 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_vring_free (struct wil6210_priv*,struct wil_ring*) ;

__attribute__((used)) static void wil_rx_fini(struct wil6210_priv *wil)
{
 struct wil_ring *vring = &wil->ring_rx;

 wil_dbg_misc(wil, "rx_fini\n");

 if (vring->va)
  wil_vring_free(wil, vring);
}
