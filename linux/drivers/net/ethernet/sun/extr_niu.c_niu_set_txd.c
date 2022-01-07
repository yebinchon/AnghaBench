
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tx_ring_info {int * descr; } ;
typedef int __le64 ;


 int TX_DESC_NUM_PTR_SHIFT ;
 int TX_DESC_SAD ;
 int TX_DESC_TR_LEN_SHIFT ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static void niu_set_txd(struct tx_ring_info *rp, int index,
   u64 mapping, u64 len, u64 mark,
   u64 n_frags)
{
 __le64 *desc = &rp->descr[index];

 *desc = cpu_to_le64(mark |
       (n_frags << TX_DESC_NUM_PTR_SHIFT) |
       (len << TX_DESC_TR_LEN_SHIFT) |
       (mapping & TX_DESC_SAD));
}
