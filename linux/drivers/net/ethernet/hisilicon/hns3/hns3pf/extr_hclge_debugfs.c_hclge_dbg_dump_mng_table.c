
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_mac_ethertype_idx_rd_cmd {int index; int* mac_addr; int flags; int ethter_type; int vlan_tag; int i_port_bitmap; int i_port_direction; int egress_port; int egress_queue; int resp_code; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {int data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_DBG_BUF_LEN ;
 int HCLGE_DBG_MNG_DROP_B ;
 int HCLGE_DBG_MNG_ETHER_MASK_B ;
 int HCLGE_DBG_MNG_E_TYPE_B ;
 int HCLGE_DBG_MNG_MAC_MASK_B ;
 int HCLGE_DBG_MNG_PF_ID ;
 int HCLGE_DBG_MNG_TBL_MAX ;
 int HCLGE_DBG_MNG_VF_ID ;
 int HCLGE_DBG_MNG_VLAN_MASK_B ;
 int HCLGE_DBG_MNG_VLAN_TAG ;
 int HCLGE_MAC_ETHERTYPE_IDX_RD ;
 int cpu_to_le16 (int) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,...) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,int,int,int,int,int,...) ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static void hclge_dbg_dump_mng_table(struct hclge_dev *hdev)
{
 struct hclge_mac_ethertype_idx_rd_cmd *req0;
 char printf_buf[HCLGE_DBG_BUF_LEN];
 struct hclge_desc desc;
 int ret, i;

 dev_info(&hdev->pdev->dev, "mng tab:\n");
 memset(printf_buf, 0, HCLGE_DBG_BUF_LEN);
 strncat(printf_buf,
  "entry|mac_addr         |mask|ether|mask|vlan|mask",
  HCLGE_DBG_BUF_LEN - 1);
 strncat(printf_buf + strlen(printf_buf),
  "|i_map|i_dir|e_type|pf_id|vf_id|q_id|drop\n",
  HCLGE_DBG_BUF_LEN - strlen(printf_buf) - 1);

 dev_info(&hdev->pdev->dev, "%s", printf_buf);

 for (i = 0; i < HCLGE_DBG_MNG_TBL_MAX; i++) {
  hclge_cmd_setup_basic_desc(&desc, HCLGE_MAC_ETHERTYPE_IDX_RD,
        1);
  req0 = (struct hclge_mac_ethertype_idx_rd_cmd *)&desc.data;
  req0->index = cpu_to_le16(i);

  ret = hclge_cmd_send(&hdev->hw, &desc, 1);
  if (ret) {
   dev_err(&hdev->pdev->dev,
    "call hclge_cmd_send fail, ret = %d\n", ret);
   return;
  }

  if (!req0->resp_code)
   continue;

  memset(printf_buf, 0, HCLGE_DBG_BUF_LEN);
  snprintf(printf_buf, HCLGE_DBG_BUF_LEN,
    "%02u   |%02x:%02x:%02x:%02x:%02x:%02x|",
    req0->index, req0->mac_addr[0], req0->mac_addr[1],
    req0->mac_addr[2], req0->mac_addr[3],
    req0->mac_addr[4], req0->mac_addr[5]);

  snprintf(printf_buf + strlen(printf_buf),
    HCLGE_DBG_BUF_LEN - strlen(printf_buf),
    "%x   |%04x |%x   |%04x|%x   |%02x   |%02x   |",
    !!(req0->flags & HCLGE_DBG_MNG_MAC_MASK_B),
    req0->ethter_type,
    !!(req0->flags & HCLGE_DBG_MNG_ETHER_MASK_B),
    req0->vlan_tag & HCLGE_DBG_MNG_VLAN_TAG,
    !!(req0->flags & HCLGE_DBG_MNG_VLAN_MASK_B),
    req0->i_port_bitmap, req0->i_port_direction);

  snprintf(printf_buf + strlen(printf_buf),
    HCLGE_DBG_BUF_LEN - strlen(printf_buf),
    "%d     |%d    |%02d   |%04d|%x\n",
    !!(req0->egress_port & HCLGE_DBG_MNG_E_TYPE_B),
    req0->egress_port & HCLGE_DBG_MNG_PF_ID,
    (req0->egress_port >> 3) & HCLGE_DBG_MNG_VF_ID,
    req0->egress_queue,
    !!(req0->egress_port & HCLGE_DBG_MNG_DROP_B));

  dev_info(&hdev->pdev->dev, "%s", printf_buf);
 }
}
