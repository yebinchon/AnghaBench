
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mii_bus {struct hclge_dev* priv; } ;
struct hclge_mdio_cfg_cmd {int data_wr; int ctrl_bit; int phyad; int phyid; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; int state; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_MDIO_C22_WRITE ;
 int HCLGE_MDIO_CTRL_OP_M ;
 int HCLGE_MDIO_CTRL_OP_S ;
 int HCLGE_MDIO_CTRL_START_B ;
 int HCLGE_MDIO_CTRL_ST_M ;
 int HCLGE_MDIO_CTRL_ST_S ;
 int HCLGE_MDIO_PHYID_M ;
 int HCLGE_MDIO_PHYID_S ;
 int HCLGE_MDIO_PHYREG_M ;
 int HCLGE_MDIO_PHYREG_S ;
 int HCLGE_OPC_MDIO_CONFIG ;
 int HCLGE_STATE_CMD_DISABLE ;
 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int) ;
 int hnae3_set_field (int ,int ,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hclge_mdio_write(struct mii_bus *bus, int phyid, int regnum,
       u16 data)
{
 struct hclge_mdio_cfg_cmd *mdio_cmd;
 struct hclge_dev *hdev = bus->priv;
 struct hclge_desc desc;
 int ret;

 if (test_bit(HCLGE_STATE_CMD_DISABLE, &hdev->state))
  return 0;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_MDIO_CONFIG, 0);

 mdio_cmd = (struct hclge_mdio_cfg_cmd *)desc.data;

 hnae3_set_field(mdio_cmd->phyid, HCLGE_MDIO_PHYID_M,
   HCLGE_MDIO_PHYID_S, (u32)phyid);
 hnae3_set_field(mdio_cmd->phyad, HCLGE_MDIO_PHYREG_M,
   HCLGE_MDIO_PHYREG_S, (u32)regnum);

 hnae3_set_bit(mdio_cmd->ctrl_bit, HCLGE_MDIO_CTRL_START_B, 1);
 hnae3_set_field(mdio_cmd->ctrl_bit, HCLGE_MDIO_CTRL_ST_M,
   HCLGE_MDIO_CTRL_ST_S, 1);
 hnae3_set_field(mdio_cmd->ctrl_bit, HCLGE_MDIO_CTRL_OP_M,
   HCLGE_MDIO_CTRL_OP_S, HCLGE_MDIO_C22_WRITE);

 mdio_cmd->data_wr = cpu_to_le16(data);

 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret) {
  dev_err(&hdev->pdev->dev,
   "mdio write fail when sending cmd, status is %d.\n",
   ret);
  return ret;
 }

 return 0;
}
