
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip; } ;
struct adapter {int db_full_task; int workq; TYPE_1__ params; } ;


 int CXGB4_CONTROL_DB_FULL ;
 int DBFIFO_HP_INT_F ;
 int DBFIFO_LP_INT_F ;
 int SGE_INT_ENABLE3_A ;
 int disable_dbs (struct adapter*) ;
 scalar_t__ is_t4 (int ) ;
 int notify_rdma_uld (struct adapter*,int ) ;
 int queue_work (int ,int *) ;
 int t4_set_reg_field (struct adapter*,int ,int,int ) ;

void t4_db_full(struct adapter *adap)
{
 if (is_t4(adap->params.chip)) {
  disable_dbs(adap);
  notify_rdma_uld(adap, CXGB4_CONTROL_DB_FULL);
  t4_set_reg_field(adap, SGE_INT_ENABLE3_A,
     DBFIFO_HP_INT_F | DBFIFO_LP_INT_F, 0);
  queue_work(adap->workq, &adap->db_full_task);
 }
}
