
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srq_entry {int valid; unsigned int idx; void* max_msn; void* cur_msn; int qbase; int qlen; int pdid; } ;
struct srq_data {int comp; struct srq_entry* entryp; } ;
struct cpl_srq_table_rpl {scalar_t__ status; int max_msn; int cur_msn; int qlen_qbase; int rsvd_pdid; } ;
struct adapter {int pdev_dev; struct srq_data* srq; } ;


 scalar_t__ CPL_CONTAINS_READ_RPL ;
 int GET_TID (struct cpl_srq_table_rpl const*) ;
 int SRQT_PDID_G (int ) ;
 int SRQT_QBASE_G (int ) ;
 int SRQT_QLEN_G (int ) ;
 unsigned int TID_TID_G (int ) ;
 void* be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int complete (int *) ;
 int dev_err (int ,char*,scalar_t__,unsigned int) ;
 scalar_t__ unlikely (int) ;

void do_srq_table_rpl(struct adapter *adap,
        const struct cpl_srq_table_rpl *rpl)
{
 unsigned int idx = TID_TID_G(GET_TID(rpl));
 struct srq_data *s = adap->srq;
 struct srq_entry *e;

 if (unlikely(rpl->status != CPL_CONTAINS_READ_RPL)) {
  dev_err(adap->pdev_dev,
   "Unexpected SRQ_TABLE_RPL status %u for entry %u\n",
    rpl->status, idx);
  goto out;
 }


 e = s->entryp;
 e->valid = 1;
 e->idx = idx;
 e->pdid = SRQT_PDID_G(be64_to_cpu(rpl->rsvd_pdid));
 e->qlen = SRQT_QLEN_G(be32_to_cpu(rpl->qlen_qbase));
 e->qbase = SRQT_QBASE_G(be32_to_cpu(rpl->qlen_qbase));
 e->cur_msn = be16_to_cpu(rpl->cur_msn);
 e->max_msn = be16_to_cpu(rpl->max_msn);
out:
 complete(&s->comp);
}
