
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hclge_dev {int dummy; } ;


 int HCLGE_OPC_QUERY_PFC_RX_PKT_CNT ;
 int hclge_pfc_stats_get (struct hclge_dev*,int ,int *) ;

int hclge_pfc_rx_stats_get(struct hclge_dev *hdev, u64 *stats)
{
 return hclge_pfc_stats_get(hdev, HCLGE_OPC_QUERY_PFC_RX_PKT_CNT, stats);
}
