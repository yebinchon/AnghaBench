
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int hw; } ;
struct hclge_desc {void** data; } ;


 int HCLGE_MAC_TNL_INT_EN ;
 int HCLGE_MAC_TNL_INT_EN_MASK ;
 int HCLGE_OPC_MAC_TNL_INT_EN ;
 void* cpu_to_le32 (int ) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

int hclge_config_mac_tnl_int(struct hclge_dev *hdev, bool en)
{
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_MAC_TNL_INT_EN, 0);
 if (en)
  desc.data[0] = cpu_to_le32(HCLGE_MAC_TNL_INT_EN);
 else
  desc.data[0] = 0;

 desc.data[1] = cpu_to_le32(HCLGE_MAC_TNL_INT_EN_MASK);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
