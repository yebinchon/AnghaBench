
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tx_cmp {int dummy; } ;
struct bnxt_cp_ring_info {struct tx_cmp** cp_desc_ring; int cp_raw_cons; } ;
struct bnxt {int dummy; } ;


 size_t CP_IDX (int ) ;
 size_t CP_RING (int ) ;
 int RING_CMP (int ) ;
 int TX_CMP_VALID (struct tx_cmp*,int ) ;

__attribute__((used)) static inline int bnxt_has_work(struct bnxt *bp, struct bnxt_cp_ring_info *cpr)
{
 u32 raw_cons = cpr->cp_raw_cons;
 u16 cons = RING_CMP(raw_cons);
 struct tx_cmp *txcmp;

 txcmp = &cpr->cp_desc_ring[CP_RING(cons)][CP_IDX(cons)];

 return TX_CMP_VALID(txcmp, raw_cons);
}
