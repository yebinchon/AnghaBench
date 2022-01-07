
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rx_agg_cmp {int dummy; } ;
struct bnxt_cp_ring_info {int ** cp_desc_ring; } ;
struct bnxt {int dummy; } ;


 int ADV_RAW_CMP (int ,int ) ;
 size_t CP_IDX (int ) ;
 size_t CP_RING (int ) ;
 int RING_CMP (int ) ;
 int RX_AGG_CMP_VALID (struct rx_agg_cmp*,int ) ;

__attribute__((used)) static int bnxt_agg_bufs_valid(struct bnxt *bp, struct bnxt_cp_ring_info *cpr,
          u8 agg_bufs, u32 *raw_cons)
{
 u16 last;
 struct rx_agg_cmp *agg;

 *raw_cons = ADV_RAW_CMP(*raw_cons, agg_bufs);
 last = RING_CMP(*raw_cons);
 agg = (struct rx_agg_cmp *)
  &cpr->cp_desc_ring[CP_RING(last)][CP_IDX(last)];
 return RX_AGG_CMP_VALID(agg, *raw_cons);
}
