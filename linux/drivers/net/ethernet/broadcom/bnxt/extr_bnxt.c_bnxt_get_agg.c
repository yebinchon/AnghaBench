
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rx_agg_cmp {int dummy; } ;
struct bnxt_cp_ring_info {int ** cp_desc_ring; } ;
struct bnxt {int dummy; } ;


 int ADV_RAW_CMP (int ,int ) ;
 size_t CP_IDX (int ) ;
 size_t CP_RING (int ) ;
 int RING_CMP (int ) ;

__attribute__((used)) static struct rx_agg_cmp *bnxt_get_agg(struct bnxt *bp,
           struct bnxt_cp_ring_info *cpr,
           u16 cp_cons, u16 curr)
{
 struct rx_agg_cmp *agg;

 cp_cons = RING_CMP(ADV_RAW_CMP(cp_cons, curr));
 agg = (struct rx_agg_cmp *)
  &cpr->cp_desc_ring[CP_RING(cp_cons)][CP_IDX(cp_cons)];
 return agg;
}
