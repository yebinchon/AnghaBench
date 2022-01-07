
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclgevf_query_version_cmd {int firmware; } ;
struct hclgevf_hw {int dummy; } ;
struct hclgevf_desc {scalar_t__ data; } ;


 int HCLGEVF_OPC_QUERY_FW_VER ;
 int hclgevf_cmd_send (struct hclgevf_hw*,struct hclgevf_desc*,int) ;
 int hclgevf_cmd_setup_basic_desc (struct hclgevf_desc*,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hclgevf_cmd_query_firmware_version(struct hclgevf_hw *hw,
            u32 *version)
{
 struct hclgevf_query_version_cmd *resp;
 struct hclgevf_desc desc;
 int status;

 resp = (struct hclgevf_query_version_cmd *)desc.data;

 hclgevf_cmd_setup_basic_desc(&desc, HCLGEVF_OPC_QUERY_FW_VER, 1);
 status = hclgevf_cmd_send(hw, &desc, 1);
 if (!status)
  *version = le32_to_cpu(resp->firmware);

 return status;
}
