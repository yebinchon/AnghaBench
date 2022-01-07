
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {int uld_rxq_info; int uld_txq_info; } ;
struct adapter {int uld; struct sge sge; } ;


 int kfree (int ) ;

void t4_uld_mem_free(struct adapter *adap)
{
 struct sge *s = &adap->sge;

 kfree(s->uld_txq_info);
 kfree(s->uld_rxq_info);
 kfree(adap->uld);
}
