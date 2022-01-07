
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct lbs_private {int* current_addr; int fwrelease; int regioncode; int copied_hwaddr; TYPE_2__* mesh_dev; TYPE_3__* dev; void* fwcapinfo; } ;
struct TYPE_4__ {int size; } ;
struct cmd_ds_get_hw_spec {int permanentaddr; int regioncode; int version; int hwifversion; int fwrelease; int fwcapinfo; TYPE_1__ hdr; } ;
typedef int cmd ;
struct TYPE_6__ {int dev_addr; } ;
struct TYPE_5__ {int dev_addr; } ;


 int CMD_GET_HW_SPEC ;
 int ETH_ALEN ;
 size_t MRVDRV_MAX_REGION_CODE ;
 scalar_t__ MRVL_FW_MAJOR_REV (int) ;
 scalar_t__ MRVL_FW_V4 ;
 int cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_get_hw_spec*) ;
 int lbs_deb_cmd (char*,int ,int ) ;
 int* lbs_region_code_to_index ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int memcpy (int ,int*,int ) ;
 int memmove (int*,int ,int ) ;
 int memset (struct cmd_ds_get_hw_spec*,int ,int) ;
 int netdev_info (TYPE_3__*,char*,...) ;

int lbs_update_hw_spec(struct lbs_private *priv)
{
 struct cmd_ds_get_hw_spec cmd;
 int ret = -1;
 u32 i;

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 memcpy(cmd.permanentaddr, priv->current_addr, ETH_ALEN);
 ret = lbs_cmd_with_response(priv, CMD_GET_HW_SPEC, &cmd);
 if (ret)
  goto out;

 priv->fwcapinfo = le32_to_cpu(cmd.fwcapinfo);



 priv->fwrelease = le32_to_cpu(cmd.fwrelease);
 priv->fwrelease = (priv->fwrelease << 8) |
  (priv->fwrelease >> 24 & 0xff);





 netdev_info(priv->dev, "%pM, fw %u.%u.%up%u, cap 0x%08x\n",
  cmd.permanentaddr,
  priv->fwrelease >> 24 & 0xff,
  priv->fwrelease >> 16 & 0xff,
  priv->fwrelease >> 8 & 0xff,
  priv->fwrelease & 0xff,
  priv->fwcapinfo);
 lbs_deb_cmd("GET_HW_SPEC: hardware interface 0x%x, hardware spec 0x%04x\n",
      cmd.hwifversion, cmd.version);
 if (MRVL_FW_MAJOR_REV(priv->fwrelease) == MRVL_FW_V4)
  priv->regioncode = (le16_to_cpu(cmd.regioncode) >> 8) & 0xFF;
 else
  priv->regioncode = le16_to_cpu(cmd.regioncode) & 0xFF;

 for (i = 0; i < MRVDRV_MAX_REGION_CODE; i++) {

  if (priv->regioncode == lbs_region_code_to_index[i])
   break;
 }


 if (i >= MRVDRV_MAX_REGION_CODE) {
  priv->regioncode = 0x10;
  netdev_info(priv->dev,
       "unidentified region code; using the default (USA)\n");
 }

 if (priv->current_addr[0] == 0xff)
  memmove(priv->current_addr, cmd.permanentaddr, ETH_ALEN);

 if (!priv->copied_hwaddr) {
  memcpy(priv->dev->dev_addr, priv->current_addr, ETH_ALEN);
  if (priv->mesh_dev)
   memcpy(priv->mesh_dev->dev_addr,
    priv->current_addr, ETH_ALEN);
  priv->copied_hwaddr = 1;
 }

out:
 return ret;
}
