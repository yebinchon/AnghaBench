
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rssi {void* nf; void* n_or_snr; TYPE_1__ hdr; } ;
typedef int s8 ;
typedef int cmd ;


 int BUG_ON (int ) ;
 int CAL_NF (int ) ;
 int CAL_RSSI (int ,int ) ;
 int CMD_802_11_RSSI ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_rssi*) ;
 int le16_to_cpu (void*) ;
 int memset (struct cmd_ds_802_11_rssi*,int ,int) ;

int lbs_get_rssi(struct lbs_private *priv, s8 *rssi, s8 *nf)
{
 struct cmd_ds_802_11_rssi cmd;
 int ret = 0;

 BUG_ON(rssi == ((void*)0));
 BUG_ON(nf == ((void*)0));

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));

 cmd.n_or_snr = cpu_to_le16(8);

 ret = lbs_cmd_with_response(priv, CMD_802_11_RSSI, &cmd);
 if (ret == 0) {
  *nf = CAL_NF(le16_to_cpu(cmd.nf));
  *rssi = CAL_RSSI(le16_to_cpu(cmd.n_or_snr), le16_to_cpu(cmd.nf));
 }

 return ret;
}
