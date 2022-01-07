
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_sw_desc {int * skb; int sgl; } ;
struct sge_txq {unsigned int cidx; unsigned int size; struct tx_sw_desc* sdesc; } ;
struct device {int dummy; } ;
struct adapter {struct device* pdev_dev; } ;


 int dev_consume_skb_any (int *) ;
 int unmap_sgl (struct device*,int *,int ,struct sge_txq*) ;

void free_tx_desc(struct adapter *adap, struct sge_txq *q,
    unsigned int n, bool unmap)
{
 struct tx_sw_desc *d;
 unsigned int cidx = q->cidx;
 struct device *dev = adap->pdev_dev;

 d = &q->sdesc[cidx];
 while (n--) {
  if (d->skb) {
   if (unmap)
    unmap_sgl(dev, d->skb, d->sgl, q);
   dev_consume_skb_any(d->skb);
   d->skb = ((void*)0);
  }
  ++d;
  if (++cidx == q->size) {
   cidx = 0;
   d = q->sdesc;
  }
 }
 q->cidx = cidx;
}
