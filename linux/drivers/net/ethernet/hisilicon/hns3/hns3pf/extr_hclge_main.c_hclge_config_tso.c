
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_cfg_tso_status_cmd {void* tso_mss_max; void* tso_mss_min; } ;


 int HCLGE_OPC_TSO_GENERIC_CONFIG ;
 int HCLGE_TSO_MSS_MIN_M ;
 int HCLGE_TSO_MSS_MIN_S ;
 void* cpu_to_le16 (scalar_t__) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_field (scalar_t__,int ,int ,unsigned int) ;

__attribute__((used)) static int hclge_config_tso(struct hclge_dev *hdev, unsigned int tso_mss_min,
       unsigned int tso_mss_max)
{
 struct hclge_cfg_tso_status_cmd *req;
 struct hclge_desc desc;
 u16 tso_mss;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TSO_GENERIC_CONFIG, 0);

 req = (struct hclge_cfg_tso_status_cmd *)desc.data;

 tso_mss = 0;
 hnae3_set_field(tso_mss, HCLGE_TSO_MSS_MIN_M,
   HCLGE_TSO_MSS_MIN_S, tso_mss_min);
 req->tso_mss_min = cpu_to_le16(tso_mss);

 tso_mss = 0;
 hnae3_set_field(tso_mss, HCLGE_TSO_MSS_MIN_M,
   HCLGE_TSO_MSS_MIN_S, tso_mss_max);
 req->tso_mss_max = cpu_to_le16(tso_mss);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
