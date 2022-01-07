
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rx_tpa_end_cmp_ext {int rx_tpa_end_cmp_errors_v2; } ;
struct rx_cmp_ext {int rx_cmp_cfa_code_errors_v2; } ;
struct rx_cmp {int dummy; } ;
struct bnxt_cp_ring_info {int ** cp_desc_ring; } ;
struct bnxt {int dummy; } ;


 scalar_t__ CMP_TYPE_RX_L2_CMP ;
 scalar_t__ CMP_TYPE_RX_L2_TPA_END_CMP ;
 size_t CP_IDX (int ) ;
 size_t CP_RING (int ) ;
 int EBUSY ;
 int NEXT_RAW_CMP (int ) ;
 int RING_CMP (int ) ;
 int RX_CMPL_ERRORS_CRC_ERROR ;
 scalar_t__ RX_CMP_TYPE (struct rx_cmp*) ;
 int RX_CMP_VALID (struct rx_cmp_ext*,int ) ;
 int RX_TPA_END_CMP_ERRORS ;
 int bnxt_rx_pkt (struct bnxt*,struct bnxt_cp_ring_info*,int *,scalar_t__*) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static int bnxt_force_rx_discard(struct bnxt *bp,
     struct bnxt_cp_ring_info *cpr,
     u32 *raw_cons, u8 *event)
{
 u32 tmp_raw_cons = *raw_cons;
 struct rx_cmp_ext *rxcmp1;
 struct rx_cmp *rxcmp;
 u16 cp_cons;
 u8 cmp_type;

 cp_cons = RING_CMP(tmp_raw_cons);
 rxcmp = (struct rx_cmp *)
   &cpr->cp_desc_ring[CP_RING(cp_cons)][CP_IDX(cp_cons)];

 tmp_raw_cons = NEXT_RAW_CMP(tmp_raw_cons);
 cp_cons = RING_CMP(tmp_raw_cons);
 rxcmp1 = (struct rx_cmp_ext *)
   &cpr->cp_desc_ring[CP_RING(cp_cons)][CP_IDX(cp_cons)];

 if (!RX_CMP_VALID(rxcmp1, tmp_raw_cons))
  return -EBUSY;

 cmp_type = RX_CMP_TYPE(rxcmp);
 if (cmp_type == CMP_TYPE_RX_L2_CMP) {
  rxcmp1->rx_cmp_cfa_code_errors_v2 |=
   cpu_to_le32(RX_CMPL_ERRORS_CRC_ERROR);
 } else if (cmp_type == CMP_TYPE_RX_L2_TPA_END_CMP) {
  struct rx_tpa_end_cmp_ext *tpa_end1;

  tpa_end1 = (struct rx_tpa_end_cmp_ext *)rxcmp1;
  tpa_end1->rx_tpa_end_cmp_errors_v2 |=
   cpu_to_le32(RX_TPA_END_CMP_ERRORS);
 }
 return bnxt_rx_pkt(bp, cpr, raw_cons, event);
}
