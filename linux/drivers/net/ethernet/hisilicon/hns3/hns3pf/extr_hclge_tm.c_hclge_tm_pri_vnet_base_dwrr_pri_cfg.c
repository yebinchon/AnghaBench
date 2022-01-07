
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct hnae3_knic_private_info {size_t num_tc; } ;
struct TYPE_6__ {struct hnae3_knic_private_info kinfo; } ;
struct hclge_vport {scalar_t__ qs_offset; int dwrr; int vport_id; struct hclge_dev* back; TYPE_3__ nic; } ;
struct TYPE_5__ {TYPE_1__* pg_info; } ;
struct hclge_dev {TYPE_2__ tm_info; } ;
struct TYPE_4__ {int * tc_dwrr; } ;


 int hclge_tm_pri_weight_cfg (struct hclge_dev*,int ,int ) ;
 int hclge_tm_qs_weight_cfg (struct hclge_dev*,scalar_t__,int ) ;

__attribute__((used)) static int hclge_tm_pri_vnet_base_dwrr_pri_cfg(struct hclge_vport *vport)
{
 struct hnae3_knic_private_info *kinfo = &vport->nic.kinfo;
 struct hclge_dev *hdev = vport->back;
 int ret;
 u8 i;


 ret = hclge_tm_pri_weight_cfg(hdev, vport->vport_id, vport->dwrr);
 if (ret)
  return ret;


 for (i = 0; i < kinfo->num_tc; i++) {
  ret = hclge_tm_qs_weight_cfg(
   hdev, vport->qs_offset + i,
   hdev->tm_info.pg_info[0].tc_dwrr[i]);
  if (ret)
   return ret;
 }

 return 0;
}
