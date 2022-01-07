
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip; } ;
struct adapter {int db_drop_task; int workq; TYPE_1__ params; } ;


 int CXGB4_CONTROL_DB_FULL ;
 int disable_dbs (struct adapter*) ;
 scalar_t__ is_t4 (int ) ;
 int notify_rdma_uld (struct adapter*,int ) ;
 int queue_work (int ,int *) ;

void t4_db_dropped(struct adapter *adap)
{
 if (is_t4(adap->params.chip)) {
  disable_dbs(adap);
  notify_rdma_uld(adap, CXGB4_CONTROL_DB_FULL);
 }
 queue_work(adap->workq, &adap->db_drop_task);
}
