
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct lbtf_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_mac_address {TYPE_1__ hdr; int macadd; void* action; } ;
typedef int cmd ;


 int CMD_802_11_MAC_ADDRESS ;
 int CMD_ACT_SET ;
 int ETH_ALEN ;
 int LBTF_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbtf_cmd_async (struct lbtf_private*,int ,TYPE_1__*,int) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int memcpy (int ,int *,int ) ;

int lbtf_set_mac_address(struct lbtf_private *priv, uint8_t *mac_addr)
{
 struct cmd_ds_802_11_mac_address cmd;
 lbtf_deb_enter(LBTF_DEB_CMD);

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_ACT_SET);

 memcpy(cmd.macadd, mac_addr, ETH_ALEN);

 lbtf_cmd_async(priv, CMD_802_11_MAC_ADDRESS, &cmd.hdr, sizeof(cmd));
 lbtf_deb_leave(LBTF_DEB_CMD);
 return 0;
}
