
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct netsec_priv {struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {int * desc; } ;


 size_t DESC_NUM ;
 size_t NETSEC_RING_RX ;
 int netsec_set_rx_de (struct netsec_priv*,struct netsec_desc_ring*,size_t,int *) ;

__attribute__((used)) static void netsec_rx_fill(struct netsec_priv *priv, u16 from, u16 num)
{
 struct netsec_desc_ring *dring = &priv->desc_ring[NETSEC_RING_RX];
 u16 idx = from;

 while (num) {
  netsec_set_rx_de(priv, dring, idx, &dring->desc[idx]);
  idx++;
  if (idx >= DESC_NUM)
   idx = 0;
  num--;
 }
}
