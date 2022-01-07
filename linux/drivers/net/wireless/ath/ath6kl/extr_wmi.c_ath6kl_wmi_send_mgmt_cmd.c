
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wmi {struct ath6kl* parent_dev; } ;
struct ath6kl {int wmi; int fw_capabilities; } ;


 int ATH6KL_FW_CAPABILITY_STA_P2PDEV_DUPLEX ;
 int __ath6kl_wmi_send_mgmt_cmd (int ,int ,int ,int ,int ,int const*,int ,int ) ;
 int ath6kl_wmi_send_action_cmd (int ,int ,int ,int ,int ,int const*,int ) ;
 scalar_t__ test_bit (int ,int ) ;

int ath6kl_wmi_send_mgmt_cmd(struct wmi *wmi, u8 if_idx, u32 id, u32 freq,
    u32 wait, const u8 *data, u16 data_len,
    u32 no_cck)
{
 int status;
 struct ath6kl *ar = wmi->parent_dev;

 if (test_bit(ATH6KL_FW_CAPABILITY_STA_P2PDEV_DUPLEX,
       ar->fw_capabilities)) {






  status = __ath6kl_wmi_send_mgmt_cmd(ar->wmi, if_idx, id, freq,
          wait, data, data_len,
          no_cck);
 } else {
  status = ath6kl_wmi_send_action_cmd(ar->wmi, if_idx, id, freq,
          wait, data, data_len);
 }

 return status;
}
