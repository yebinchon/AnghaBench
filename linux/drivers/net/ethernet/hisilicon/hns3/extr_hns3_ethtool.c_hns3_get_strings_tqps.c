
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hnae3_knic_private_info {int num_tqps; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;


 int HNS3_RXQ_STATS_COUNT ;
 int HNS3_TXQ_STATS_COUNT ;
 int hns3_rxq_stats ;
 int hns3_txq_stats ;
 int * hns3_update_strings (int *,int ,int ,int ,char const*) ;

__attribute__((used)) static u8 *hns3_get_strings_tqps(struct hnae3_handle *handle, u8 *data)
{
 struct hnae3_knic_private_info *kinfo = &handle->kinfo;
 const char tx_prefix[] = "txq";
 const char rx_prefix[] = "rxq";


 data = hns3_update_strings(data, hns3_txq_stats, HNS3_TXQ_STATS_COUNT,
       kinfo->num_tqps, tx_prefix);


 data = hns3_update_strings(data, hns3_rxq_stats, HNS3_RXQ_STATS_COUNT,
       kinfo->num_tqps, rx_prefix);

 return data;
}
