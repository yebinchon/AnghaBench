
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags2; } ;
struct htt_resp {TYPE_1__ data_tx_completion; } ;


 int HTT_TX_CMPL_FLAG_DATA_RSSI ;

__attribute__((used)) static int ath10k_htt_tx_rssi_enable(struct htt_resp *resp)
{
 return (resp->data_tx_completion.flags2 & HTT_TX_CMPL_FLAG_DATA_RSSI);
}
