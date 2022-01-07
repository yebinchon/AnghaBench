
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_dev {int hw; } ;
struct hclge_desc {int * data; } ;
typedef int __le32 ;


 int HCLGE_OPC_QUERY_MAC_REG_NUM ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclge_mac_query_reg_num(struct hclge_dev *hdev, u32 *desc_num)
{
 struct hclge_desc desc;
 __le32 *desc_data;
 u32 reg_num;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_QUERY_MAC_REG_NUM, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  return ret;

 desc_data = (__le32 *)(&desc.data[0]);
 reg_num = le32_to_cpu(*desc_data);

 *desc_num = 1 + ((reg_num - 3) >> 2) +
      (u32)(((reg_num - 3) & 0x3) ? 1 : 0);

 return 0;
}
