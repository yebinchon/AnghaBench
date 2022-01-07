
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsec_priv {struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {struct netsec_de* vaddr; } ;
struct netsec_de {unsigned int attr; } ;


 int DESC_NUM ;
 int DESC_SZ ;
 size_t NETSEC_RING_TX ;
 unsigned int NETSEC_TX_SHIFT_OWN_FIELD ;

__attribute__((used)) static void netsec_setup_tx_dring(struct netsec_priv *priv)
{
 struct netsec_desc_ring *dring = &priv->desc_ring[NETSEC_RING_TX];
 int i;

 for (i = 0; i < DESC_NUM; i++) {
  struct netsec_de *de;

  de = dring->vaddr + (DESC_SZ * i);




  de->attr = 1U << NETSEC_TX_SHIFT_OWN_FIELD;
 }
}
