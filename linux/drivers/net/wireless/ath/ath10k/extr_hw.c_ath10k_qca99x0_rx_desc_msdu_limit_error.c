
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int info0; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct htt_rx_desc {TYPE_2__ msdu_end; } ;


 int RX_MSDU_END_INFO0_MSDU_LIMIT_ERR ;
 int __cpu_to_le32 (int ) ;

__attribute__((used)) static bool ath10k_qca99x0_rx_desc_msdu_limit_error(struct htt_rx_desc *rxd)
{
 return !!(rxd->msdu_end.common.info0 &
    __cpu_to_le32(RX_MSDU_END_INFO0_MSDU_LIMIT_ERR));
}
