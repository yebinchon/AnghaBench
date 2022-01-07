
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns3_mac_stats {int rx_pause_cnt; int tx_pause_cnt; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_3__ {int mac_rx_mac_pause_num; int mac_tx_mac_pause_num; } ;
struct TYPE_4__ {TYPE_1__ mac_stats; } ;
struct hclge_dev {TYPE_2__ hw_stats; } ;


 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_update_stats (struct hnae3_handle*,int *) ;

__attribute__((used)) static void hclge_get_mac_stat(struct hnae3_handle *handle,
          struct hns3_mac_stats *mac_stats)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 hclge_update_stats(handle, ((void*)0));

 mac_stats->tx_pause_cnt = hdev->hw_stats.mac_stats.mac_tx_mac_pause_num;
 mac_stats->rx_pause_cnt = hdev->hw_stats.mac_stats.mac_rx_mac_pause_num;
}
