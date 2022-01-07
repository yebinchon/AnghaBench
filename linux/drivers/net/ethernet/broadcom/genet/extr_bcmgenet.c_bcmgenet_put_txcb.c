
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enet_cb {int dummy; } ;
struct bcmgenet_tx_ring {scalar_t__ write_ptr; scalar_t__ cb_ptr; scalar_t__ end_ptr; struct enet_cb* cbs; } ;
struct bcmgenet_priv {int dummy; } ;



__attribute__((used)) static struct enet_cb *bcmgenet_put_txcb(struct bcmgenet_priv *priv,
      struct bcmgenet_tx_ring *ring)
{
 struct enet_cb *tx_cb_ptr;

 tx_cb_ptr = ring->cbs;
 tx_cb_ptr += ring->write_ptr - ring->cb_ptr;


 if (ring->write_ptr == ring->cb_ptr)
  ring->write_ptr = ring->end_ptr;
 else
  ring->write_ptr--;

 return tx_cb_ptr;
}
