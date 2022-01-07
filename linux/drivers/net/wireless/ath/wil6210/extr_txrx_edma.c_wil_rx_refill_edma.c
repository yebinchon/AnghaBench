
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* va; } ;
struct wil_ring {int swtail; int swhead; int hwtail; TYPE_1__ edma_rx_swtail; } ;
struct wil6210_priv {struct wil_ring ring_rx; } ;


 int EAGAIN ;
 scalar_t__ unlikely (int) ;
 int wil_dbg_txrx (struct wil6210_priv*,char*) ;
 int wil_err_ratelimited (struct wil6210_priv*,char*,int,int) ;
 int wil_ring_alloc_skb_edma (struct wil6210_priv*,struct wil_ring*,int) ;
 int wil_ring_next_head (struct wil_ring*) ;
 int wil_w (struct wil6210_priv*,int ,int) ;
 int wmb () ;

__attribute__((used)) static int wil_rx_refill_edma(struct wil6210_priv *wil)
{
 struct wil_ring *ring = &wil->ring_rx;
 u32 next_head;
 int rc = 0;
 ring->swtail = *ring->edma_rx_swtail.va;

 for (; next_head = wil_ring_next_head(ring),
      (next_head != ring->swtail);
      ring->swhead = next_head) {
  rc = wil_ring_alloc_skb_edma(wil, ring, ring->swhead);
  if (unlikely(rc)) {
   if (rc == -EAGAIN)
    wil_dbg_txrx(wil, "No free buffer ID found\n");
   else
    wil_err_ratelimited(wil,
          "Error %d in refill desc[%d]\n",
          rc, ring->swhead);
   break;
  }
 }




 wmb();

 wil_w(wil, ring->hwtail, ring->swhead);

 return rc;
}
