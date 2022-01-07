
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct bnxt_cp_ring_info {int dummy; } ;


 int bnxt_reuse_rx_agg_bufs (struct bnxt_cp_ring_info*,int ,int ,scalar_t__,int) ;

__attribute__((used)) static void bnxt_abort_tpa(struct bnxt_cp_ring_info *cpr, u16 idx, u32 agg_bufs)
{
 if (agg_bufs)
  bnxt_reuse_rx_agg_bufs(cpr, idx, 0, agg_bufs, 1);
}
