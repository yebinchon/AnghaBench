
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct lbtf_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_beacon_set {TYPE_1__ hdr; int beacon; void* len; } ;
typedef int cmd ;


 int CMD_802_11_BEACON_SET ;
 int LBTF_DEB_CMD ;
 int MRVL_MAX_BCN_SIZE ;
 void* cpu_to_le16 (int) ;
 int lbtf_cmd_async (struct lbtf_private*,int ,TYPE_1__*,int) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave_args (int ,char*,int) ;
 int memcpy (int ,int *,int) ;

int lbtf_beacon_set(struct lbtf_private *priv, struct sk_buff *beacon)
{
 struct cmd_ds_802_11_beacon_set cmd;
 int size;

 lbtf_deb_enter(LBTF_DEB_CMD);

 if (beacon->len > MRVL_MAX_BCN_SIZE) {
  lbtf_deb_leave_args(LBTF_DEB_CMD, "ret %d", -1);
  return -1;
 }
 size = sizeof(cmd) - sizeof(cmd.beacon) + beacon->len;
 cmd.hdr.size = cpu_to_le16(size);
 cmd.len = cpu_to_le16(beacon->len);
 memcpy(cmd.beacon, (u8 *) beacon->data, beacon->len);

 lbtf_cmd_async(priv, CMD_802_11_BEACON_SET, &cmd.hdr, size);

 lbtf_deb_leave_args(LBTF_DEB_CMD, "ret %d", 0);
 return 0;
}
