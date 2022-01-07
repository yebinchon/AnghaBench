
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct wireless_dev {scalar_t__ mesh_id_up_len; int ssid; } ;
struct mrvl_meshie_val {int dummy; } ;
struct TYPE_4__ {int* oui; int mesh_id; scalar_t__ mesh_id_len; int mesh_capability; int active_metric_id; int active_protocol_id; int version; int subtype; int type; } ;
struct mrvl_meshie {TYPE_2__ val; scalar_t__ len; int id; } ;
struct lbs_private {int mesh_tlv; TYPE_1__* mesh_dev; } ;
struct cmd_ds_mesh_config {void* length; scalar_t__ data; void* channel; } ;
typedef int cmd ;
struct TYPE_3__ {struct wireless_dev* ieee80211_ptr; } ;




 int IEEE80211_MAX_SSID_LEN ;
 int MARVELL_MESH_CAPABILITY ;
 int MARVELL_MESH_IE_SUBTYPE ;
 int MARVELL_MESH_IE_TYPE ;
 int MARVELL_MESH_IE_VERSION ;
 int MARVELL_MESH_METRIC_ID ;
 int MARVELL_MESH_PROTO_ID_HWMP ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int __lbs_mesh_config_send (struct lbs_private*,struct cmd_ds_mesh_config*,int,int ) ;
 void* cpu_to_le16 (int) ;
 int lbs_deb_cmd (char*,int,int ,int,scalar_t__,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct cmd_ds_mesh_config*,int ,int) ;

__attribute__((used)) static int lbs_mesh_config(struct lbs_private *priv, uint16_t action,
  uint16_t chan)
{
 struct wireless_dev *mesh_wdev;
 struct cmd_ds_mesh_config cmd;
 struct mrvl_meshie *ie;

 memset(&cmd, 0, sizeof(cmd));
 cmd.channel = cpu_to_le16(chan);
 ie = (struct mrvl_meshie *)cmd.data;

 switch (action) {
 case 129:
  ie->id = WLAN_EID_VENDOR_SPECIFIC;
  ie->val.oui[0] = 0x00;
  ie->val.oui[1] = 0x50;
  ie->val.oui[2] = 0x43;
  ie->val.type = MARVELL_MESH_IE_TYPE;
  ie->val.subtype = MARVELL_MESH_IE_SUBTYPE;
  ie->val.version = MARVELL_MESH_IE_VERSION;
  ie->val.active_protocol_id = MARVELL_MESH_PROTO_ID_HWMP;
  ie->val.active_metric_id = MARVELL_MESH_METRIC_ID;
  ie->val.mesh_capability = MARVELL_MESH_CAPABILITY;

  if (priv->mesh_dev) {
   mesh_wdev = priv->mesh_dev->ieee80211_ptr;
   ie->val.mesh_id_len = mesh_wdev->mesh_id_up_len;
   memcpy(ie->val.mesh_id, mesh_wdev->ssid,
      mesh_wdev->mesh_id_up_len);
  }

  ie->len = sizeof(struct mrvl_meshie_val) -
   IEEE80211_MAX_SSID_LEN + ie->val.mesh_id_len;

  cmd.length = cpu_to_le16(sizeof(struct mrvl_meshie_val));
  break;
 case 128:
  break;
 default:
  return -1;
 }
 lbs_deb_cmd("mesh config action %d type %x channel %d SSID %*pE\n",
      action, priv->mesh_tlv, chan, ie->val.mesh_id_len,
      ie->val.mesh_id);

 return __lbs_mesh_config_send(priv, &cmd, action, priv->mesh_tlv);
}
