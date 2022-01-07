
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pktq {int dummy; } ;


 int brcmf_err (char*) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 struct sk_buff* brcmu_pktq_pdeq_tail (struct pktq*,int) ;
 struct sk_buff* brcmu_pktq_peek_tail (struct pktq*,int*) ;
 struct sk_buff* brcmu_pktq_penq (struct pktq*,int,struct sk_buff*) ;
 scalar_t__ pktq_full (struct pktq*) ;
 scalar_t__ pktq_pfull (struct pktq*,int) ;

__attribute__((used)) static bool brcmf_sdio_prec_enq(struct pktq *q, struct sk_buff *pkt, int prec)
{
 struct sk_buff *p;
 int eprec = -1;




 if (!pktq_pfull(q, prec) && !pktq_full(q)) {
  brcmu_pktq_penq(q, prec, pkt);
  return 1;
 }


 if (pktq_pfull(q, prec)) {
  eprec = prec;
 } else if (pktq_full(q)) {
  p = brcmu_pktq_peek_tail(q, &eprec);
  if (eprec > prec)
   return 0;
 }


 if (eprec >= 0) {

  if (eprec == prec)
   return 0;

  p = brcmu_pktq_pdeq_tail(q, eprec);
  if (p == ((void*)0))
   brcmf_err("brcmu_pktq_pdeq_tail() failed\n");
  brcmu_pkt_buf_free_skb(p);
 }


 p = brcmu_pktq_penq(q, prec, pkt);
 if (p == ((void*)0))
  brcmf_err("brcmu_pktq_penq() failed\n");

 return p != ((void*)0);
}
