
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_rdma_stats {int rqe_dfr_pkt; } ;
struct adapter {int dummy; } ;


 int TP_MIB_RQE_DFR_PKT_A ;
 int t4_tp_mib_read (struct adapter*,int *,int,int ,int) ;

void t4_tp_get_rdma_stats(struct adapter *adap, struct tp_rdma_stats *st,
     bool sleep_ok)
{
 t4_tp_mib_read(adap, &st->rqe_dfr_pkt, 2, TP_MIB_RQE_DFR_PKT_A,
         sleep_ok);
}
