
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_request_hdr {int wr_lo; int wr_hi; } ;
struct tx_desc {int * flit; } ;
struct sk_buff {int destructor; scalar_t__ data; int len; } ;
struct sge_txq {TYPE_1__* sdesc; struct tx_desc* desc; } ;
struct sg_ent {int dummy; } ;
struct adapter {int pdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int * skb; } ;


 int MAX_SKB_FRAGS ;
 int deferred_unmap_destructor ;
 scalar_t__ immediate (struct sk_buff*) ;
 int memcpy (int *,struct work_request_hdr*,int) ;
 scalar_t__ need_skb_unmap () ;
 int setup_deferred_unmapping (struct sk_buff*,int ,struct sg_ent*,unsigned int) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;
 int write_imm (struct tx_desc*,struct sk_buff*,int ,unsigned int) ;
 unsigned int write_sgl (struct sk_buff*,struct sg_ent*,scalar_t__,scalar_t__,int const*) ;
 int write_wr_hdr_sgl (unsigned int,struct sk_buff*,struct tx_desc*,unsigned int,struct sge_txq*,struct sg_ent*,unsigned int,unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static void write_ofld_wr(struct adapter *adap, struct sk_buff *skb,
     struct sge_txq *q, unsigned int pidx,
     unsigned int gen, unsigned int ndesc,
     const dma_addr_t *addr)
{
 unsigned int sgl_flits, flits;
 struct work_request_hdr *from;
 struct sg_ent *sgp, sgl[MAX_SKB_FRAGS / 2 + 1];
 struct tx_desc *d = &q->desc[pidx];

 if (immediate(skb)) {
  q->sdesc[pidx].skb = ((void*)0);
  write_imm(d, skb, skb->len, gen);
  return;
 }



 from = (struct work_request_hdr *)skb->data;
 memcpy(&d->flit[1], &from[1],
        skb_transport_offset(skb) - sizeof(*from));

 flits = skb_transport_offset(skb) / 8;
 sgp = ndesc == 1 ? (struct sg_ent *)&d->flit[flits] : sgl;
 sgl_flits = write_sgl(skb, sgp, skb_transport_header(skb),
         skb_tail_pointer(skb) - skb_transport_header(skb),
         addr);
 if (need_skb_unmap()) {
  setup_deferred_unmapping(skb, adap->pdev, sgp, sgl_flits);
  skb->destructor = deferred_unmap_destructor;
 }

 write_wr_hdr_sgl(ndesc, skb, d, pidx, q, sgl, flits, sgl_flits,
    gen, from->wr_hi, from->wr_lo);
}
