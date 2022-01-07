
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_uld_rxq_info {struct sge_uld_rxq_info* uldrxq; struct sge_uld_rxq_info* rspq_id; } ;
struct TYPE_2__ {struct sge_uld_rxq_info** uld_rxq_info; } ;
struct adapter {TYPE_1__ sge; } ;


 int kfree (struct sge_uld_rxq_info*) ;

__attribute__((used)) static void free_queues_uld(struct adapter *adap, unsigned int uld_type)
{
 struct sge_uld_rxq_info *rxq_info = adap->sge.uld_rxq_info[uld_type];

 adap->sge.uld_rxq_info[uld_type] = ((void*)0);
 kfree(rxq_info->rspq_id);
 kfree(rxq_info->uldrxq);
 kfree(rxq_info);
}
