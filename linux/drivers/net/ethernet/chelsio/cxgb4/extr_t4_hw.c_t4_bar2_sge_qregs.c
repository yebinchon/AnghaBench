
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_3__ {int hps; unsigned int eq_qpp; unsigned int iq_qpp; } ;
struct TYPE_4__ {TYPE_1__ sge; int chip; } ;
struct adapter {TYPE_2__ params; } ;
typedef enum t4_bar2_qtype { ____Placeholder_t4_bar2_qtype } t4_bar2_qtype ;


 int EINVAL ;
 unsigned int SGE_UDB_SIZE ;
 int T4_BAR2_QTYPE_EGRESS ;
 scalar_t__ is_t4 (int ) ;

int t4_bar2_sge_qregs(struct adapter *adapter,
        unsigned int qid,
        enum t4_bar2_qtype qtype,
        int user,
        u64 *pbar2_qoffset,
        unsigned int *pbar2_qid)
{
 unsigned int page_shift, page_size, qpp_shift, qpp_mask;
 u64 bar2_page_offset, bar2_qoffset;
 unsigned int bar2_qid, bar2_qid_offset, bar2_qinferred;


 if (!user && is_t4(adapter->params.chip))
  return -EINVAL;



 page_shift = adapter->params.sge.hps + 10;
 page_size = 1 << page_shift;



 qpp_shift = (qtype == T4_BAR2_QTYPE_EGRESS
       ? adapter->params.sge.eq_qpp
       : adapter->params.sge.iq_qpp);
 qpp_mask = (1 << qpp_shift) - 1;






 bar2_page_offset = ((u64)(qid >> qpp_shift) << page_shift);
 bar2_qid = qid & qpp_mask;
 bar2_qid_offset = bar2_qid * SGE_UDB_SIZE;
 bar2_qoffset = bar2_page_offset;
 bar2_qinferred = (bar2_qid_offset < page_size);
 if (bar2_qinferred) {
  bar2_qoffset += bar2_qid_offset;
  bar2_qid = 0;
 }

 *pbar2_qoffset = bar2_qoffset;
 *pbar2_qid = bar2_qid;
 return 0;
}
