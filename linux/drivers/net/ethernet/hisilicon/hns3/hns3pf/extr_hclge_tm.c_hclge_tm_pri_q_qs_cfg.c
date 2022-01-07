
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct hnae3_knic_private_info {size_t num_tc; } ;
struct TYPE_2__ {struct hnae3_knic_private_info kinfo; } ;
struct hclge_vport {size_t qs_offset; TYPE_1__ nic; } ;
struct hclge_dev {scalar_t__ tx_sch_mode; size_t num_alloc_vport; struct hclge_vport* vport; } ;


 int EINVAL ;
 scalar_t__ HCLGE_FLAG_TC_BASE_SCH_MODE ;
 scalar_t__ HCLGE_FLAG_VNET_BASE_SCH_MODE ;
 size_t HNAE3_MAX_TC ;
 int hclge_tm_qs_to_pri_map_cfg (struct hclge_dev*,size_t,size_t) ;
 int hclge_vport_q_to_qs_map (struct hclge_dev*,struct hclge_vport*) ;

__attribute__((used)) static int hclge_tm_pri_q_qs_cfg(struct hclge_dev *hdev)
{
 struct hclge_vport *vport = hdev->vport;
 int ret;
 u32 i, k;

 if (hdev->tx_sch_mode == HCLGE_FLAG_TC_BASE_SCH_MODE) {

  for (k = 0; k < hdev->num_alloc_vport; k++) {
   struct hnae3_knic_private_info *kinfo =
    &vport[k].nic.kinfo;

   for (i = 0; i < kinfo->num_tc; i++) {
    ret = hclge_tm_qs_to_pri_map_cfg(
     hdev, vport[k].qs_offset + i, i);
    if (ret)
     return ret;
   }
  }
 } else if (hdev->tx_sch_mode == HCLGE_FLAG_VNET_BASE_SCH_MODE) {

  for (k = 0; k < hdev->num_alloc_vport; k++)
   for (i = 0; i < HNAE3_MAX_TC; i++) {
    ret = hclge_tm_qs_to_pri_map_cfg(
     hdev, vport[k].qs_offset + i, k);
    if (ret)
     return ret;
   }
 } else {
  return -EINVAL;
 }


 for (i = 0; i < hdev->num_alloc_vport; i++) {
  ret = hclge_vport_q_to_qs_map(hdev, vport);
  if (ret)
   return ret;

  vport++;
 }

 return 0;
}
