
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_snr_threshold_params_cmd {int dummy; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SNR_THRESHOLD_PARAMS_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int memcpy (struct wmi_snr_threshold_params_cmd*,struct wmi_snr_threshold_params_cmd*,int) ;

__attribute__((used)) static int ath6kl_wmi_send_snr_threshold_params(struct wmi *wmi,
   struct wmi_snr_threshold_params_cmd *snr_cmd)
{
 struct sk_buff *skb;
 struct wmi_snr_threshold_params_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_snr_threshold_params_cmd *) skb->data;
 memcpy(cmd, snr_cmd, sizeof(struct wmi_snr_threshold_params_cmd));

 return ath6kl_wmi_cmd_send(wmi, 0, skb, WMI_SNR_THRESHOLD_PARAMS_CMDID,
       NO_SYNC_WMIFLAG);
}
