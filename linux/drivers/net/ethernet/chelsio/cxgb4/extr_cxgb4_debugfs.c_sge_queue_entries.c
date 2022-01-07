
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ethqsets; } ;
struct adapter {TYPE_1__ sge; } ;


 int CXGB4_TX_MAX ;
 int CXGB4_ULD_MAX ;
 int DIV_ROUND_UP (int ,int) ;
 int MAX_CTRL_QUEUES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sge_qinfo_uld_ciq_entries (struct adapter const*,int) ;
 scalar_t__ sge_qinfo_uld_rxq_entries (struct adapter const*,int) ;
 scalar_t__ sge_qinfo_uld_txq_entries (struct adapter const*,int) ;
 int uld_mutex ;

__attribute__((used)) static int sge_queue_entries(const struct adapter *adap)
{
 int tot_uld_entries = 0;
 int i;

 mutex_lock(&uld_mutex);
 for (i = 0; i < CXGB4_TX_MAX; i++)
  tot_uld_entries += sge_qinfo_uld_txq_entries(adap, i);

 for (i = 0; i < CXGB4_ULD_MAX; i++) {
  tot_uld_entries += sge_qinfo_uld_rxq_entries(adap, i);
  tot_uld_entries += sge_qinfo_uld_ciq_entries(adap, i);
 }
 mutex_unlock(&uld_mutex);

 return DIV_ROUND_UP(adap->sge.ethqsets, 4) +
        tot_uld_entries +
        DIV_ROUND_UP(MAX_CTRL_QUEUES, 4) + 1;
}
