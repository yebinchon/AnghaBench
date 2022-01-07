
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_sw_desc {int * skb; int sgl; } ;
struct sge_txq {unsigned int cidx; unsigned int size; struct tx_sw_desc* sdesc; } ;
struct device {int dummy; } ;
struct adapter {struct device* pdev_dev; } ;


 int dev_consume_skb_any (int *) ;
 scalar_t__ need_skb_unmap () ;
 int unmap_sgl (struct device*,int *,int ,struct sge_txq*) ;

__attribute__((used)) static void free_tx_desc(struct adapter *adapter, struct sge_txq *tq,
    unsigned int n, bool unmap)
{
 struct tx_sw_desc *sdesc;
 unsigned int cidx = tq->cidx;
 struct device *dev = adapter->pdev_dev;

 const int need_unmap = need_skb_unmap() && unmap;

 sdesc = &tq->sdesc[cidx];
 while (n--) {




  if (sdesc->skb) {
   if (need_unmap)
    unmap_sgl(dev, sdesc->skb, sdesc->sgl, tq);
   dev_consume_skb_any(sdesc->skb);
   sdesc->skb = ((void*)0);
  }

  sdesc++;
  if (++cidx == tq->size) {
   cidx = 0;
   sdesc = tq->sdesc;
  }
 }
 tq->cidx = cidx;
}
