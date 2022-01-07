
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int hw; } ;
struct hclge_desc {int * data; } ;


 int HCLGE_MAC_TNL_INT_CLR ;
 int HCLGE_OPC_CLEAR_MAC_TNL_INT ;
 int cpu_to_le32 (int ) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_clear_mac_tnl_int(struct hclge_dev *hdev)
{
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_CLEAR_MAC_TNL_INT, 0);
 desc.data[0] = cpu_to_le32(HCLGE_MAC_TNL_INT_CLR);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
