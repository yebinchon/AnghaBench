
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_uld_txq_info {int dummy; } ;
struct sge_uld_rxq_info {int dummy; } ;
struct sge {void* uld_rxq_info; void* uld_txq_info; } ;
struct adapter {void* uld; struct sge sge; } ;


 int CXGB4_TX_MAX ;
 int CXGB4_ULD_MAX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (int ,int,int ) ;
 int kfree (void*) ;

int t4_uld_mem_alloc(struct adapter *adap)
{
 struct sge *s = &adap->sge;

 adap->uld = kcalloc(CXGB4_ULD_MAX, sizeof(*adap->uld), GFP_KERNEL);
 if (!adap->uld)
  return -ENOMEM;

 s->uld_rxq_info = kcalloc(CXGB4_ULD_MAX,
      sizeof(struct sge_uld_rxq_info *),
      GFP_KERNEL);
 if (!s->uld_rxq_info)
  goto err_uld;

 s->uld_txq_info = kcalloc(CXGB4_TX_MAX,
      sizeof(struct sge_uld_txq_info *),
      GFP_KERNEL);
 if (!s->uld_txq_info)
  goto err_uld_rx;
 return 0;

err_uld_rx:
 kfree(s->uld_rxq_info);
err_uld:
 kfree(adap->uld);
 return -ENOMEM;
}
