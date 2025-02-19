
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int tunn_info ;
struct TYPE_16__ {int b_mode_enabled; void* tun_cls; } ;
struct TYPE_15__ {int b_mode_enabled; void* tun_cls; } ;
struct TYPE_14__ {int b_mode_enabled; void* tun_cls; } ;
struct TYPE_13__ {int b_mode_enabled; void* tun_cls; } ;
struct TYPE_12__ {int b_mode_enabled; void* tun_cls; } ;
struct qed_tunnel_info {int b_hw_start; int allow_npar_tx_switch; int avoid_eng_reset; struct qed_tunnel_info* p_drv_load_params; int override_force_load; int mfw_timeout_val; int is_crash_kernel; int const* bin_fw_data; int int_mode; struct qed_tunnel_info* p_tunn; TYPE_6__ ip_geneve; TYPE_5__ l2_geneve; TYPE_4__ ip_gre; TYPE_3__ l2_gre; TYPE_2__ vxlan; } ;
struct qed_slowpath_params {int drv_major; int drv_minor; int drv_rev; int drv_eng; int name; int int_mode; } ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_drv_version {int version; int name; } ;
struct qed_hwfn {struct qed_ptt* p_arfs_ptt; int p_main_ptt; scalar_t__ using_ll2; } ;
struct qed_hw_init_params {int b_hw_start; int allow_npar_tx_switch; int avoid_eng_reset; struct qed_hw_init_params* p_drv_load_params; int override_force_load; int mfw_timeout_val; int is_crash_kernel; int const* bin_fw_data; int int_mode; struct qed_hw_init_params* p_tunn; TYPE_6__ ip_geneve; TYPE_5__ l2_geneve; TYPE_4__ ip_gre; TYPE_3__ l2_gre; TYPE_2__ vxlan; } ;
struct qed_drv_load_params {int b_hw_start; int allow_npar_tx_switch; int avoid_eng_reset; struct qed_drv_load_params* p_drv_load_params; int override_force_load; int mfw_timeout_val; int is_crash_kernel; int const* bin_fw_data; int int_mode; struct qed_drv_load_params* p_tunn; TYPE_6__ ip_geneve; TYPE_5__ l2_geneve; TYPE_4__ ip_gre; TYPE_3__ l2_gre; TYPE_2__ vxlan; } ;
struct TYPE_17__ {int int_mode; } ;
struct TYPE_18__ {TYPE_7__ out; } ;
struct qed_dev {int num_hwfns; int tunn_feature_mask; TYPE_9__* firmware; TYPE_8__ int_params; int rx_coalesce_usecs; TYPE_1__* pdev; } ;
typedef int hw_init_params ;
typedef int drv_load_params ;
struct TYPE_19__ {int * data; } ;
struct TYPE_11__ {int dev; } ;


 int BIT (int ) ;
 int DP_INFO (struct qed_dev*,char*) ;
 int DP_NOTICE (struct qed_dev*,char*,...) ;
 int EINVAL ;
 scalar_t__ IS_PF (struct qed_dev*) ;
 scalar_t__ MCP_DRV_VER_STR_SIZE ;
 int QED_DEFAULT_RX_USECS ;
 int QED_FW_FILE_NAME ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int QED_LOAD_REQ_LOCK_TO_DEFAULT ;
 int QED_MODE_IPGENEVE_TUNN ;
 int QED_MODE_IPGRE_TUNN ;
 int QED_MODE_L2GENEVE_TUNN ;
 int QED_MODE_L2GRE_TUNN ;
 int QED_MODE_VXLAN_TUNN ;
 int QED_OVERRIDE_FORCE_LOAD_NONE ;
 void* QED_TUNN_CLSS_MAC_VLAN ;
 int is_kdump_kernel () ;
 int memset (struct qed_tunnel_info*,int ,int) ;
 int qed_alloc_stream_mem (struct qed_dev*) ;
 int qed_dbg_pf_init (struct qed_dev*) ;
 int qed_disable_msix (struct qed_dev*) ;
 int qed_free_stream_mem (struct qed_dev*) ;
 int qed_hw_init (struct qed_dev*,struct qed_tunnel_info*) ;
 int qed_hw_stop (struct qed_dev*) ;
 int qed_hw_timers_stop_all (struct qed_dev*) ;
 scalar_t__ qed_iov_wq_start (struct qed_dev*) ;
 int qed_iov_wq_stop (struct qed_dev*,int) ;
 int qed_ll2_alloc_if (struct qed_dev*) ;
 int qed_ll2_dealloc_if (struct qed_dev*) ;
 int qed_mcp_send_drv_version (struct qed_hwfn*,int ,struct qed_mcp_drv_version*) ;
 int qed_nic_setup (struct qed_dev*) ;
 struct qed_ptt* qed_ptt_acquire (struct qed_hwfn*) ;
 int qed_ptt_release (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_resc_free (struct qed_dev*) ;
 int qed_reset_vport_stats (struct qed_dev*) ;
 int qed_slowpath_irq_free (struct qed_dev*) ;
 int qed_slowpath_setup_int (struct qed_dev*,int ) ;
 int qed_slowpath_vf_setup_int (struct qed_dev*) ;
 scalar_t__ qed_slowpath_wq_start (struct qed_dev*) ;
 int qed_slowpath_wq_stop (struct qed_dev*) ;
 int release_firmware (TYPE_9__*) ;
 int request_firmware (TYPE_9__**,int ,int *) ;
 int strlcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int qed_slowpath_start(struct qed_dev *cdev,
         struct qed_slowpath_params *params)
{
 struct qed_drv_load_params drv_load_params;
 struct qed_hw_init_params hw_init_params;
 struct qed_mcp_drv_version drv_version;
 struct qed_tunnel_info tunn_info;
 const u8 *data = ((void*)0);
 struct qed_hwfn *hwfn;
 struct qed_ptt *p_ptt;
 int rc = -EINVAL;

 if (qed_iov_wq_start(cdev))
  goto err;

 if (qed_slowpath_wq_start(cdev))
  goto err;

 if (IS_PF(cdev)) {
  rc = request_firmware(&cdev->firmware, QED_FW_FILE_NAME,
          &cdev->pdev->dev);
  if (rc) {
   DP_NOTICE(cdev,
      "Failed to find fw file - /lib/firmware/%s\n",
      QED_FW_FILE_NAME);
   goto err;
  }

  if (cdev->num_hwfns == 1) {
   p_ptt = qed_ptt_acquire(QED_LEADING_HWFN(cdev));
   if (p_ptt) {
    QED_LEADING_HWFN(cdev)->p_arfs_ptt = p_ptt;
   } else {
    DP_NOTICE(cdev,
       "Failed to acquire PTT for aRFS\n");
    goto err;
   }
  }
 }

 cdev->rx_coalesce_usecs = QED_DEFAULT_RX_USECS;
 rc = qed_nic_setup(cdev);
 if (rc)
  goto err;

 if (IS_PF(cdev))
  rc = qed_slowpath_setup_int(cdev, params->int_mode);
 else
  rc = qed_slowpath_vf_setup_int(cdev);
 if (rc)
  goto err1;

 if (IS_PF(cdev)) {

  rc = qed_alloc_stream_mem(cdev);
  if (rc)
   goto err2;


  data = cdev->firmware->data + sizeof(u32);

  qed_dbg_pf_init(cdev);
 }


 memset(&hw_init_params, 0, sizeof(hw_init_params));
 memset(&tunn_info, 0, sizeof(tunn_info));
 tunn_info.vxlan.b_mode_enabled = 1;
 tunn_info.l2_gre.b_mode_enabled = 1;
 tunn_info.ip_gre.b_mode_enabled = 1;
 tunn_info.l2_geneve.b_mode_enabled = 1;
 tunn_info.ip_geneve.b_mode_enabled = 1;
 tunn_info.vxlan.tun_cls = QED_TUNN_CLSS_MAC_VLAN;
 tunn_info.l2_gre.tun_cls = QED_TUNN_CLSS_MAC_VLAN;
 tunn_info.ip_gre.tun_cls = QED_TUNN_CLSS_MAC_VLAN;
 tunn_info.l2_geneve.tun_cls = QED_TUNN_CLSS_MAC_VLAN;
 tunn_info.ip_geneve.tun_cls = QED_TUNN_CLSS_MAC_VLAN;
 hw_init_params.p_tunn = &tunn_info;
 hw_init_params.b_hw_start = 1;
 hw_init_params.int_mode = cdev->int_params.out.int_mode;
 hw_init_params.allow_npar_tx_switch = 1;
 hw_init_params.bin_fw_data = data;

 memset(&drv_load_params, 0, sizeof(drv_load_params));
 drv_load_params.is_crash_kernel = is_kdump_kernel();
 drv_load_params.mfw_timeout_val = QED_LOAD_REQ_LOCK_TO_DEFAULT;
 drv_load_params.avoid_eng_reset = 0;
 drv_load_params.override_force_load = QED_OVERRIDE_FORCE_LOAD_NONE;
 hw_init_params.p_drv_load_params = &drv_load_params;

 rc = qed_hw_init(cdev, &hw_init_params);
 if (rc)
  goto err2;

 DP_INFO(cdev,
  "HW initialization and function start completed successfully\n");

 if (IS_PF(cdev)) {
  cdev->tunn_feature_mask = (BIT(QED_MODE_VXLAN_TUNN) |
        BIT(QED_MODE_L2GENEVE_TUNN) |
        BIT(QED_MODE_IPGENEVE_TUNN) |
        BIT(QED_MODE_L2GRE_TUNN) |
        BIT(QED_MODE_IPGRE_TUNN));
 }


 if (QED_LEADING_HWFN(cdev)->using_ll2) {
  rc = qed_ll2_alloc_if(cdev);
  if (rc)
   goto err3;
 }
 if (IS_PF(cdev)) {
  hwfn = QED_LEADING_HWFN(cdev);
  drv_version.version = (params->drv_major << 24) |
          (params->drv_minor << 16) |
          (params->drv_rev << 8) |
          (params->drv_eng);
  strlcpy(drv_version.name, params->name,
   MCP_DRV_VER_STR_SIZE - 4);
  rc = qed_mcp_send_drv_version(hwfn, hwfn->p_main_ptt,
           &drv_version);
  if (rc) {
   DP_NOTICE(cdev, "Failed sending drv version command\n");
   goto err4;
  }
 }

 qed_reset_vport_stats(cdev);

 return 0;

err4:
 qed_ll2_dealloc_if(cdev);
err3:
 qed_hw_stop(cdev);
err2:
 qed_hw_timers_stop_all(cdev);
 if (IS_PF(cdev))
  qed_slowpath_irq_free(cdev);
 qed_free_stream_mem(cdev);
 qed_disable_msix(cdev);
err1:
 qed_resc_free(cdev);
err:
 if (IS_PF(cdev))
  release_firmware(cdev->firmware);

 if (IS_PF(cdev) && (cdev->num_hwfns == 1) &&
     QED_LEADING_HWFN(cdev)->p_arfs_ptt)
  qed_ptt_release(QED_LEADING_HWFN(cdev),
    QED_LEADING_HWFN(cdev)->p_arfs_ptt);

 qed_iov_wq_stop(cdev, 0);

 qed_slowpath_wq_stop(cdev);

 return rc;
}
