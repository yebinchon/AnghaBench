
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct filter_entry {unsigned int tid; int valid; } ;
struct TYPE_4__ {int chip; } ;
struct TYPE_3__ {unsigned int ntids; int nftids; int nsftids; struct filter_entry* ftid_tab; struct filter_entry** tid_tab; } ;
struct adapter {int win0_lock; TYPE_2__ params; TYPE_1__ tids; } ;
typedef int be64_count ;
typedef int be64_byte_count ;
typedef int be32_count ;
typedef int __be64 ;
typedef int __be32 ;


 int E2BIG ;
 int EINVAL ;
 int MEMWIN_NIC ;
 int MEM_EDC0 ;
 int T4_MEMORY_READ ;
 unsigned int TCB_SIZE ;
 int TP_CMM_TCB_BASE_A ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 scalar_t__ is_hashfilter (struct adapter*) ;
 scalar_t__ is_t4 (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_memory_rw (struct adapter*,int ,int ,unsigned int,int,int *,int ) ;
 unsigned int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static int get_filter_count(struct adapter *adapter, unsigned int fidx,
       u64 *pkts, u64 *bytes, bool hash)
{
 unsigned int tcb_base, tcbaddr;
 unsigned int word_offset;
 struct filter_entry *f;
 __be64 be64_byte_count;
 int ret;

 tcb_base = t4_read_reg(adapter, TP_CMM_TCB_BASE_A);
 if (is_hashfilter(adapter) && hash) {
  if (fidx < adapter->tids.ntids) {
   f = adapter->tids.tid_tab[fidx];
   if (!f)
    return -EINVAL;
  } else {
   return -E2BIG;
  }
 } else {
  if ((fidx != (adapter->tids.nftids +
         adapter->tids.nsftids - 1)) &&
      fidx >= adapter->tids.nftids)
   return -E2BIG;

  f = &adapter->tids.ftid_tab[fidx];
  if (!f->valid)
   return -EINVAL;
 }
 tcbaddr = tcb_base + f->tid * TCB_SIZE;

 spin_lock(&adapter->win0_lock);
 if (is_t4(adapter->params.chip)) {
  __be64 be64_count;


  *bytes = 0;


  word_offset = 4;
  ret = t4_memory_rw(adapter, MEMWIN_NIC, MEM_EDC0,
       tcbaddr + (word_offset * sizeof(__be32)),
       sizeof(be64_count),
       (__be32 *)&be64_count,
       T4_MEMORY_READ);
  if (ret < 0)
   goto out;
  *pkts = be64_to_cpu(be64_count);
 } else {
  __be32 be32_count;


  word_offset = 4;
  ret = t4_memory_rw(adapter, MEMWIN_NIC, MEM_EDC0,
       tcbaddr + (word_offset * sizeof(__be32)),
       sizeof(be64_byte_count),
       &be64_byte_count,
       T4_MEMORY_READ);
  if (ret < 0)
   goto out;
  *bytes = be64_to_cpu(be64_byte_count);


  word_offset = 6;
  ret = t4_memory_rw(adapter, MEMWIN_NIC, MEM_EDC0,
       tcbaddr + (word_offset * sizeof(__be32)),
       sizeof(be32_count),
       &be32_count,
       T4_MEMORY_READ);
  if (ret < 0)
   goto out;
  *pkts = (u64)be32_to_cpu(be32_count);
 }

out:
 spin_unlock(&adapter->win0_lock);
 return ret;
}
