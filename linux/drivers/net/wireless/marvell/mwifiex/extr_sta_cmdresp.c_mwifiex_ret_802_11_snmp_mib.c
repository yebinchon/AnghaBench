
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct mwifiex_private {int adapter; } ;
struct host_cmd_ds_802_11_snmp_mib {int value; int buf_size; int query_type; int oid; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_snmp_mib smib; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;




 scalar_t__ HostCmd_ACT_GEN_GET ;
 int INFO ;


 int get_unaligned_le16 (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mwifiex_dbg (int ,int ,char*,scalar_t__,...) ;

__attribute__((used)) static int mwifiex_ret_802_11_snmp_mib(struct mwifiex_private *priv,
           struct host_cmd_ds_command *resp,
           u32 *data_buf)
{
 struct host_cmd_ds_802_11_snmp_mib *smib = &resp->params.smib;
 u16 oid = le16_to_cpu(smib->oid);
 u16 query_type = le16_to_cpu(smib->query_type);
 u32 ul_temp;

 mwifiex_dbg(priv->adapter, INFO,
      "info: SNMP_RESP: oid value = %#x,\t"
      "query_type = %#x, buf size = %#x\n",
      oid, query_type, le16_to_cpu(smib->buf_size));
 if (query_type == HostCmd_ACT_GEN_GET) {
  ul_temp = get_unaligned_le16(smib->value);
  if (data_buf)
   *data_buf = ul_temp;
  switch (oid) {
  case 130:
   mwifiex_dbg(priv->adapter, INFO,
        "info: SNMP_RESP: FragThsd =%u\n",
        ul_temp);
   break;
  case 129:
   mwifiex_dbg(priv->adapter, INFO,
        "info: SNMP_RESP: RTSThsd =%u\n",
        ul_temp);
   break;
  case 128:
   mwifiex_dbg(priv->adapter, INFO,
        "info: SNMP_RESP: TxRetryCount=%u\n",
        ul_temp);
   break;
  case 131:
   mwifiex_dbg(priv->adapter, INFO,
        "info: SNMP_RESP: DTIM period=%u\n",
        ul_temp);
  default:
   break;
  }
 }

 return 0;
}
