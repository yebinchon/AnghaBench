
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmix_hb_challenge_resp_cmd {int cookie; } ;
struct wmi {int parent_dev; } ;


 int ath6kl_recovery_hb_event (int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void ath6kl_wmi_hb_challenge_resp_event(struct wmi *wmi, u8 *datap,
            int len)
{
 struct wmix_hb_challenge_resp_cmd *cmd;

 if (len < sizeof(struct wmix_hb_challenge_resp_cmd))
  return;

 cmd = (struct wmix_hb_challenge_resp_cmd *) datap;
 ath6kl_recovery_hb_event(wmi->parent_dev,
     le32_to_cpu(cmd->cookie));
}
