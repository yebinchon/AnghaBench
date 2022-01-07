
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_2__ {int mac_stats; } ;
struct hclge_dev {TYPE_1__ hw_stats; } ;


 int ARRAY_SIZE (int ) ;
 int g_mac_stats_string ;
 int * hclge_comm_get_stats (int *,int ,int ,int *) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int * hclge_tqps_get_stats (struct hnae3_handle*,int *) ;

__attribute__((used)) static void hclge_get_stats(struct hnae3_handle *handle, u64 *data)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 u64 *p;

 p = hclge_comm_get_stats(&hdev->hw_stats.mac_stats, g_mac_stats_string,
     ARRAY_SIZE(g_mac_stats_string), data);
 p = hclge_tqps_get_stats(handle, p);
}
