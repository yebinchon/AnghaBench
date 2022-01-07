
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct adapter {int win0_lock; } ;
typedef int indices ;
typedef int __be64 ;
typedef int __be32 ;


 int MEM_EDC0 ;
 int SGE_DBQ_CTXT_BADDR_A ;
 int T4_MEMORY_READ ;
 int be64_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_memory_rw (struct adapter*,int ,int ,scalar_t__,int,int *,int ) ;
 scalar_t__ t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static int read_eq_indices(struct adapter *adap, u16 qid, u16 *pidx, u16 *cidx)
{
 u32 addr = t4_read_reg(adap, SGE_DBQ_CTXT_BADDR_A) + 24 * qid + 8;
 __be64 indices;
 int ret;

 spin_lock(&adap->win0_lock);
 ret = t4_memory_rw(adap, 0, MEM_EDC0, addr,
      sizeof(indices), (__be32 *)&indices,
      T4_MEMORY_READ);
 spin_unlock(&adap->win0_lock);
 if (!ret) {
  *cidx = (be64_to_cpu(indices) >> 25) & 0xffff;
  *pidx = (be64_to_cpu(indices) >> 9) & 0xffff;
 }
 return ret;
}
