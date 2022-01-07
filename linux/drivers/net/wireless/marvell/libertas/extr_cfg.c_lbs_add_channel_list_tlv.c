
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mrvl_ie_header {void* len; void* type; } ;
struct lbs_private {int scan_channel; TYPE_2__* scan_req; } ;
struct TYPE_6__ {int passivescan; } ;
struct chanscanparamset {void* maxscantime; TYPE_3__ chanscanmode; int channumber; int radiotype; } ;
struct TYPE_5__ {TYPE_1__** channels; } ;
struct TYPE_4__ {int hw_value; } ;


 int CMD_SCAN_RADIO_TYPE_BG ;
 int LBS_DWELL_ACTIVE ;
 int LBS_DWELL_PASSIVE ;
 int TLV_TYPE_CHANLIST ;
 void* cpu_to_le16 (int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int lbs_add_channel_list_tlv(struct lbs_private *priv, u8 *tlv,
        int last_channel, int active_scan)
{
 int chanscanparamsize = sizeof(struct chanscanparamset) *
  (last_channel - priv->scan_channel);

 struct mrvl_ie_header *header = (void *) tlv;
 header->type = cpu_to_le16(TLV_TYPE_CHANLIST);
 header->len = cpu_to_le16(chanscanparamsize);
 tlv += sizeof(struct mrvl_ie_header);



 memset(tlv, 0, chanscanparamsize);

 while (priv->scan_channel < last_channel) {
  struct chanscanparamset *param = (void *) tlv;

  param->radiotype = CMD_SCAN_RADIO_TYPE_BG;
  param->channumber =
   priv->scan_req->channels[priv->scan_channel]->hw_value;
  if (active_scan) {
   param->maxscantime = cpu_to_le16(LBS_DWELL_ACTIVE);
  } else {
   param->chanscanmode.passivescan = 1;
   param->maxscantime = cpu_to_le16(LBS_DWELL_PASSIVE);
  }
  tlv += sizeof(struct chanscanparamset);
  priv->scan_channel++;
 }
 return sizeof(struct mrvl_ie_header) + chanscanparamsize;
}
