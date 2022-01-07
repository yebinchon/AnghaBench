
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_query_version_cmd {int firmware; } ;
struct hclge_hw {int dummy; } ;
struct hclge_desc {scalar_t__ data; } ;
typedef enum hclge_cmd_status { ____Placeholder_hclge_cmd_status } hclge_cmd_status ;


 int HCLGE_OPC_QUERY_FW_VER ;
 int hclge_cmd_send (struct hclge_hw*,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static enum hclge_cmd_status hclge_cmd_query_firmware_version(
  struct hclge_hw *hw, u32 *version)
{
 struct hclge_query_version_cmd *resp;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_QUERY_FW_VER, 1);
 resp = (struct hclge_query_version_cmd *)desc.data;

 ret = hclge_cmd_send(hw, &desc, 1);
 if (!ret)
  *version = le32_to_cpu(resp->firmware);

 return ret;
}
