
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct rx_tpa_end_cmp_ext {int rx_tpa_end_cmp_seg_len; } ;
struct rx_tpa_end_cmp {int dummy; } ;
struct bnxt_tpa_info {int gso_type; } ;
struct bnxt {int flags; struct sk_buff* (* gro_func ) (struct bnxt_tpa_info*,int,int ,struct sk_buff*) ;} ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int gso_type; int gso_size; } ;


 int BNXT_FLAG_CHIP_P5 ;
 TYPE_2__* NAPI_GRO_CB (struct sk_buff*) ;
 int TPA_END_GRO_TS (struct rx_tpa_end_cmp*) ;
 int TPA_END_PAYLOAD_OFF (struct rx_tpa_end_cmp*) ;
 int TPA_END_PAYLOAD_OFF_P5 (struct rx_tpa_end_cmp_ext*) ;
 int TPA_END_TPA_SEGS (struct rx_tpa_end_cmp*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct sk_buff* stub1 (struct bnxt_tpa_info*,int,int ,struct sk_buff*) ;
 int tcp_gro_complete (struct sk_buff*) ;

__attribute__((used)) static inline struct sk_buff *bnxt_gro_skb(struct bnxt *bp,
        struct bnxt_tpa_info *tpa_info,
        struct rx_tpa_end_cmp *tpa_end,
        struct rx_tpa_end_cmp_ext *tpa_end1,
        struct sk_buff *skb)
{
 return skb;
}
