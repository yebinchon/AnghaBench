
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct TYPE_2__ {int len; int type; } ;
struct mwifiex_ie_types_data {scalar_t__ data; TYPE_1__ header; } ;
struct mwifiex_ie_types_bss_scan_rsp {int dummy; } ;
struct mwifiex_ie_types_bss_scan_info {scalar_t__ radio_type; int tsf; int rssi; } ;
struct mwifiex_event_scan_result {scalar_t__ num_of_set; int more_event; int buf_size; } ;
struct mwifiex_adapter {int dummy; } ;
typedef int s32 ;
typedef scalar_t__ s16 ;


 int CMD_D ;
 int ERROR ;
 int INFO ;
 scalar_t__ MWIFIEX_MAX_AP ;

 int TLV_TYPE_BSS_SCAN_RSP ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int mwifiex_check_next_scan_command (struct mwifiex_private*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_dbg_dump (struct mwifiex_adapter*,int ,char*,void*,int) ;
 int mwifiex_parse_single_response_buf (struct mwifiex_private*,scalar_t__**,scalar_t__*,int ,scalar_t__*,int,int) ;

int mwifiex_handle_event_ext_scan_report(struct mwifiex_private *priv,
      void *buf)
{
 int ret = 0;
 struct mwifiex_adapter *adapter = priv->adapter;
 u8 *bss_info;
 u32 bytes_left, bytes_left_for_tlv, idx;
 u16 type, len;
 struct mwifiex_ie_types_data *tlv;
 struct mwifiex_ie_types_bss_scan_rsp *scan_rsp_tlv;
 struct mwifiex_ie_types_bss_scan_info *scan_info_tlv;
 u8 *radio_type;
 u64 fw_tsf = 0;
 s32 rssi = 0;
 struct mwifiex_event_scan_result *event_scan = buf;
 u8 num_of_set = event_scan->num_of_set;
 u8 *scan_resp = buf + sizeof(struct mwifiex_event_scan_result);
 u16 scan_resp_size = le16_to_cpu(event_scan->buf_size);

 if (num_of_set > MWIFIEX_MAX_AP) {
  mwifiex_dbg(adapter, ERROR,
       "EXT_SCAN: Invalid number of AP returned (%d)!!\n",
       num_of_set);
  ret = -1;
  goto check_next_scan;
 }

 bytes_left = scan_resp_size;
 mwifiex_dbg(adapter, INFO,
      "EXT_SCAN: size %d, returned %d APs...",
      scan_resp_size, num_of_set);
 mwifiex_dbg_dump(adapter, CMD_D, "EXT_SCAN buffer:", buf,
    scan_resp_size +
    sizeof(struct mwifiex_event_scan_result));

 tlv = (struct mwifiex_ie_types_data *)scan_resp;

 for (idx = 0; idx < num_of_set && bytes_left; idx++) {
  type = le16_to_cpu(tlv->header.type);
  len = le16_to_cpu(tlv->header.len);
  if (bytes_left < sizeof(struct mwifiex_ie_types_header) + len) {
   mwifiex_dbg(adapter, ERROR,
        "EXT_SCAN: Error bytes left < TLV length\n");
   break;
  }
  scan_rsp_tlv = ((void*)0);
  scan_info_tlv = ((void*)0);
  bytes_left_for_tlv = bytes_left;




  if (type != TLV_TYPE_BSS_SCAN_RSP)
   break;

  bss_info = (u8 *)tlv;
  scan_rsp_tlv = (struct mwifiex_ie_types_bss_scan_rsp *)tlv;
  tlv = (struct mwifiex_ie_types_data *)(tlv->data + len);
  bytes_left_for_tlv -=
    (len + sizeof(struct mwifiex_ie_types_header));

  while (bytes_left_for_tlv >=
         sizeof(struct mwifiex_ie_types_header) &&
         le16_to_cpu(tlv->header.type) != TLV_TYPE_BSS_SCAN_RSP) {
   type = le16_to_cpu(tlv->header.type);
   len = le16_to_cpu(tlv->header.len);
   if (bytes_left_for_tlv <
       sizeof(struct mwifiex_ie_types_header) + len) {
    mwifiex_dbg(adapter, ERROR,
         "EXT_SCAN: Error in processing TLV,\t"
         "bytes left < TLV length\n");
    scan_rsp_tlv = ((void*)0);
    bytes_left_for_tlv = 0;
    continue;
   }
   switch (type) {
   case 128:
    scan_info_tlv =
      (struct mwifiex_ie_types_bss_scan_info *)tlv;
    if (len !=
     sizeof(struct mwifiex_ie_types_bss_scan_info) -
     sizeof(struct mwifiex_ie_types_header)) {
     bytes_left_for_tlv = 0;
     continue;
    }
    break;
   default:
    break;
   }
   tlv = (struct mwifiex_ie_types_data *)(tlv->data + len);
   bytes_left -=
    (len + sizeof(struct mwifiex_ie_types_header));
   bytes_left_for_tlv -=
    (len + sizeof(struct mwifiex_ie_types_header));
  }

  if (!scan_rsp_tlv)
   break;






  bss_info += sizeof(u16);
  bytes_left -= sizeof(u16);

  if (scan_info_tlv) {
   rssi = (s32)(s16)(le16_to_cpu(scan_info_tlv->rssi));
   rssi *= 100;
   mwifiex_dbg(adapter, INFO,
        "info: InterpretIE: RSSI=%d\n", rssi);
   fw_tsf = le64_to_cpu(scan_info_tlv->tsf);
   radio_type = &scan_info_tlv->radio_type;
  } else {
   radio_type = ((void*)0);
  }
  ret = mwifiex_parse_single_response_buf(priv, &bss_info,
       &bytes_left, fw_tsf,
       radio_type, 1, rssi);
  if (ret)
   goto check_next_scan;
 }

check_next_scan:
 if (!event_scan->more_event)
  mwifiex_check_next_scan_command(priv);

 return ret;
}
