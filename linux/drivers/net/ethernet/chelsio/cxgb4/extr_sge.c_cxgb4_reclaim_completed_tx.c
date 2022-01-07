
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int dummy; } ;
struct adapter {int dummy; } ;


 int reclaim_completed_tx (struct adapter*,struct sge_txq*,int,int) ;

void cxgb4_reclaim_completed_tx(struct adapter *adap, struct sge_txq *q,
    bool unmap)
{
 (void)reclaim_completed_tx(adap, q, -1, unmap);
}
