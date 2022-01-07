
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stops; } ;
struct sge_uld_txq {int full; TYPE_1__ q; } ;
struct fw_wr_hdr {int lo; } ;


 int FW_WR_EQUEQ_F ;
 int FW_WR_EQUIQ_F ;
 int htonl (int) ;

__attribute__((used)) static void ofldtxq_stop(struct sge_uld_txq *q, struct fw_wr_hdr *wr)
{
 wr->lo |= htonl(FW_WR_EQUEQ_F | FW_WR_EQUIQ_F);
 q->q.stops++;
 q->full = 1;
}
