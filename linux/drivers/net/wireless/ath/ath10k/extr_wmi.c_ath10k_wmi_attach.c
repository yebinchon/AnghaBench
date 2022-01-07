
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mgmt_pending_tx; int radar_confirm; int barrier; int unified_ready; int service_ready; int * peer_flags; int * pdev_param; int * vdev_param; int * ops; int * cmd; } ;
struct ath10k {TYPE_3__ wmi; TYPE_2__* running_fw; int radar_confirmation_work; int svc_rdy_work; void* wmi_key_cipher; } ;
struct TYPE_4__ {int wmi_op_version; int fw_features; } ;
struct TYPE_5__ {TYPE_1__ fw_file; } ;


 int ATH10K_FW_FEATURE_MGMT_TX_BY_REF ;
 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_radar_confirmation_work ;
 int ath10k_wmi_event_service_ready_work ;
 int ath10k_wmi_tlv_attach (struct ath10k*) ;
 int idr_init (int *) ;
 int init_completion (int *) ;
 scalar_t__ test_bit (int ,int ) ;
 int wmi_10_1_ops ;
 int wmi_10_2_4_cmd_map ;
 int wmi_10_2_4_ops ;
 int wmi_10_2_4_pdev_param_map ;
 int wmi_10_2_4_vdev_param_map ;
 int wmi_10_2_cmd_map ;
 int wmi_10_2_ops ;
 int wmi_10_2_peer_flags_map ;
 int wmi_10_4_cmd_map ;
 int wmi_10_4_ops ;
 int wmi_10_4_pdev_param_map ;
 int wmi_10_4_vdev_param_map ;
 int wmi_10x_cmd_map ;
 int wmi_10x_pdev_param_map ;
 int wmi_10x_peer_flags_map ;
 int wmi_10x_vdev_param_map ;
 int wmi_cmd_map ;
 void* wmi_key_cipher_suites ;
 int wmi_ops ;
 int wmi_pdev_param_map ;
 int wmi_peer_flags_map ;
 void* wmi_tlv_key_cipher_suites ;
 int wmi_vdev_param_map ;

int ath10k_wmi_attach(struct ath10k *ar)
{
 switch (ar->running_fw->fw_file.wmi_op_version) {
 case 132:
  ar->wmi.ops = &wmi_10_4_ops;
  ar->wmi.cmd = &wmi_10_4_cmd_map;
  ar->wmi.vdev_param = &wmi_10_4_vdev_param_map;
  ar->wmi.pdev_param = &wmi_10_4_pdev_param_map;
  ar->wmi.peer_flags = &wmi_10_2_peer_flags_map;
  ar->wmi_key_cipher = wmi_key_cipher_suites;
  break;
 case 133:
  ar->wmi.cmd = &wmi_10_2_4_cmd_map;
  ar->wmi.ops = &wmi_10_2_4_ops;
  ar->wmi.vdev_param = &wmi_10_2_4_vdev_param_map;
  ar->wmi.pdev_param = &wmi_10_2_4_pdev_param_map;
  ar->wmi.peer_flags = &wmi_10_2_peer_flags_map;
  ar->wmi_key_cipher = wmi_key_cipher_suites;
  break;
 case 134:
  ar->wmi.cmd = &wmi_10_2_cmd_map;
  ar->wmi.ops = &wmi_10_2_ops;
  ar->wmi.vdev_param = &wmi_10x_vdev_param_map;
  ar->wmi.pdev_param = &wmi_10x_pdev_param_map;
  ar->wmi.peer_flags = &wmi_10_2_peer_flags_map;
  ar->wmi_key_cipher = wmi_key_cipher_suites;
  break;
 case 135:
  ar->wmi.cmd = &wmi_10x_cmd_map;
  ar->wmi.ops = &wmi_10_1_ops;
  ar->wmi.vdev_param = &wmi_10x_vdev_param_map;
  ar->wmi.pdev_param = &wmi_10x_pdev_param_map;
  ar->wmi.peer_flags = &wmi_10x_peer_flags_map;
  ar->wmi_key_cipher = wmi_key_cipher_suites;
  break;
 case 131:
  ar->wmi.cmd = &wmi_cmd_map;
  ar->wmi.ops = &wmi_ops;
  ar->wmi.vdev_param = &wmi_vdev_param_map;
  ar->wmi.pdev_param = &wmi_pdev_param_map;
  ar->wmi.peer_flags = &wmi_peer_flags_map;
  ar->wmi_key_cipher = wmi_key_cipher_suites;
  break;
 case 129:
  ath10k_wmi_tlv_attach(ar);
  ar->wmi_key_cipher = wmi_tlv_key_cipher_suites;
  break;
 case 128:
 case 130:
  ath10k_err(ar, "unsupported WMI op version: %d\n",
      ar->running_fw->fw_file.wmi_op_version);
  return -EINVAL;
 }

 init_completion(&ar->wmi.service_ready);
 init_completion(&ar->wmi.unified_ready);
 init_completion(&ar->wmi.barrier);
 init_completion(&ar->wmi.radar_confirm);

 INIT_WORK(&ar->svc_rdy_work, ath10k_wmi_event_service_ready_work);
 INIT_WORK(&ar->radar_confirmation_work,
    ath10k_radar_confirmation_work);

 if (test_bit(ATH10K_FW_FEATURE_MGMT_TX_BY_REF,
       ar->running_fw->fw_file.fw_features)) {
  idr_init(&ar->wmi.mgmt_pending_tx);
 }

 return 0;
}
