
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hclge_umv_spc_alc_cmd {int space_size; int allocate; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {int * data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_MAC_VLAN_ALLOCATE ;
 int HCLGE_UMV_SPC_ALC_B ;
 int cpu_to_le32 (int ) ;
 int dev_err (int *,char*,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_set_umv_space(struct hclge_dev *hdev, u16 space_size,
          u16 *allocated_size, bool is_alloc)
{
 struct hclge_umv_spc_alc_cmd *req;
 struct hclge_desc desc;
 int ret;

 req = (struct hclge_umv_spc_alc_cmd *)desc.data;
 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_MAC_VLAN_ALLOCATE, 0);
 if (!is_alloc)
  hnae3_set_bit(req->allocate, HCLGE_UMV_SPC_ALC_B, 1);

 req->space_size = cpu_to_le32(space_size);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "%s umv space failed for cmd_send, ret =%d\n",
   is_alloc ? "allocate" : "free", ret);
  return ret;
 }

 if (is_alloc && allocated_size)
  *allocated_size = le32_to_cpu(desc.data[1]);

 return 0;
}
