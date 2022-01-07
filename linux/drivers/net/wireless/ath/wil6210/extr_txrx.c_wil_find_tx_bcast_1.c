
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_ring_tx_data {int dot1x_open; int enabled; } ;
struct wil_ring {int va; } ;
struct wil6210_vif {int bcast_ring; } ;
struct wil6210_priv {struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;
struct sk_buff {scalar_t__ protocol; } ;


 int ETH_P_PAE ;
 scalar_t__ cpu_to_be16 (int ) ;

__attribute__((used)) static struct wil_ring *wil_find_tx_bcast_1(struct wil6210_priv *wil,
         struct wil6210_vif *vif,
         struct sk_buff *skb)
{
 struct wil_ring *v;
 struct wil_ring_tx_data *txdata;
 int i = vif->bcast_ring;

 if (i < 0)
  return ((void*)0);
 v = &wil->ring_tx[i];
 txdata = &wil->ring_tx_data[i];
 if (!v->va || !txdata->enabled)
  return ((void*)0);
 if (!wil->ring_tx_data[i].dot1x_open &&
     skb->protocol != cpu_to_be16(ETH_P_PAE))
  return ((void*)0);

 return v;
}
