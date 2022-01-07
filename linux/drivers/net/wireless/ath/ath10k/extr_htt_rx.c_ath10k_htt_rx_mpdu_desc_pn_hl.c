
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union htt_rx_pn_t {int pn48; int pn24; } ;
typedef int u64 ;
struct TYPE_2__ {int pn_63_32; } ;
struct htt_hl_rx_desc {int pn_31_0; TYPE_1__ u0; } ;


 int __le32_to_cpu (int ) ;

__attribute__((used)) static void ath10k_htt_rx_mpdu_desc_pn_hl(struct htt_hl_rx_desc *rx_desc,
       union htt_rx_pn_t *pn,
       int pn_len_bits)
{
 switch (pn_len_bits) {
 case 48:
  pn->pn48 = __le32_to_cpu(rx_desc->pn_31_0) +
      ((u64)(__le32_to_cpu(rx_desc->u0.pn_63_32) & 0xFFFF) << 32);
  break;
 case 24:
  pn->pn24 = __le32_to_cpu(rx_desc->pn_31_0);
  break;
 };
}
