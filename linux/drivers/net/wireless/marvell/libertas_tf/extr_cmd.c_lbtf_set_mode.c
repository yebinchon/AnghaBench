
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbtf_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_set_mode {TYPE_1__ hdr; void* mode; } ;
typedef enum lbtf_mode { ____Placeholder_lbtf_mode } lbtf_mode ;
typedef int cmd ;


 int CMD_802_11_SET_MODE ;
 int LBTF_DEB_WEXT ;
 void* cpu_to_le16 (int) ;
 int lbtf_cmd_async (struct lbtf_private*,int ,TYPE_1__*,int) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_deb_wext (char*,int) ;

void lbtf_set_mode(struct lbtf_private *priv, enum lbtf_mode mode)
{
 struct cmd_ds_set_mode cmd;
 lbtf_deb_enter(LBTF_DEB_WEXT);

 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.mode = cpu_to_le16(mode);
 lbtf_deb_wext("Switching to mode: 0x%x\n", mode);
 lbtf_cmd_async(priv, CMD_802_11_SET_MODE, &cmd.hdr, sizeof(cmd));

 lbtf_deb_leave(LBTF_DEB_WEXT);
}
