
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_status_ring {int swhead; int size; int hwtail; int va; } ;
struct wil_ring {int va; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int num_rx_status_rings; struct wil6210_vif** vifs; scalar_t__ use_rx_hw_reordering; struct wil_status_ring* srings; struct wil_ring ring_rx; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 struct net_device* vif_to_ndev (struct wil6210_vif*) ;
 int wil_dbg_txrx (struct wil6210_priv*,char*,...) ;
 int wil_err (struct wil6210_priv*,char*,...) ;
 int wil_netif_rx_any (struct sk_buff*,struct net_device*) ;
 int wil_rx_refill_edma (struct wil6210_priv*) ;
 int wil_rx_reorder (struct wil6210_priv*,struct sk_buff*) ;
 int wil_rx_status_get_mid (void*) ;
 void* wil_skb_rxstatus (struct sk_buff*) ;
 struct sk_buff* wil_sring_reap_rx_edma (struct wil6210_priv*,struct wil_status_ring*) ;
 int wil_w (struct wil6210_priv*,int ,int) ;

void wil_rx_handle_edma(struct wil6210_priv *wil, int *quota)
{
 struct net_device *ndev;
 struct wil_ring *ring = &wil->ring_rx;
 struct wil_status_ring *sring;
 struct sk_buff *skb;
 int i;

 if (unlikely(!ring->va)) {
  wil_err(wil, "Rx IRQ while Rx not yet initialized\n");
  return;
 }
 wil_dbg_txrx(wil, "rx_handle\n");

 for (i = 0; i < wil->num_rx_status_rings; i++) {
  sring = &wil->srings[i];
  if (unlikely(!sring->va)) {
   wil_err(wil,
    "Rx IRQ while Rx status ring %d not yet initialized\n",
    i);
   continue;
  }

  while ((*quota > 0) &&
         (((void*)0) != (skb =
   wil_sring_reap_rx_edma(wil, sring)))) {
   (*quota)--;
   if (wil->use_rx_hw_reordering) {
    void *msg = wil_skb_rxstatus(skb);
    int mid = wil_rx_status_get_mid(msg);
    struct wil6210_vif *vif = wil->vifs[mid];

    if (unlikely(!vif)) {
     wil_dbg_txrx(wil,
           "RX desc invalid mid %d",
           mid);
     kfree_skb(skb);
     continue;
    }
    ndev = vif_to_ndev(vif);
    wil_netif_rx_any(skb, ndev);
   } else {
    wil_rx_reorder(wil, skb);
   }
  }

  wil_w(wil, sring->hwtail, (sring->swhead - 1) % sring->size);
 }

 wil_rx_refill_edma(wil);
}
