
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int fw_build_timestamp; int fw_version; } ;
struct TYPE_12__ {int soc_id; } ;
struct TYPE_11__ {int board_id; } ;
struct TYPE_10__ {int chip_family; int chip_id; } ;
struct TYPE_9__ {scalar_t__ result; int error; } ;
struct wlfw_cap_resp_msg_v01 {int fw_build_id; scalar_t__ fw_build_id_valid; TYPE_5__ fw_version_info; scalar_t__ fw_version_info_valid; TYPE_4__ soc_info; scalar_t__ soc_info_valid; TYPE_3__ board_info; scalar_t__ board_info_valid; TYPE_2__ chip_info; scalar_t__ chip_info_valid; TYPE_1__ resp; } ;
struct wlfw_cap_req_msg_v01 {int dummy; } ;
struct qmi_txn {int dummy; } ;
struct ath10k_snoc {int flags; } ;
struct TYPE_16__ {int soc_id; } ;
struct TYPE_15__ {int board_id; } ;
struct TYPE_14__ {int chip_family; int chip_id; } ;
struct ath10k_qmi {int fw_build_id; int fw_build_timestamp; int fw_version; TYPE_8__ soc_info; TYPE_7__ board_info; TYPE_6__ chip_info; int qmi_hdl; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_QMI_TIMEOUT ;
 int ATH10K_SNOC_FLAG_REGISTERED ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int MAX_BUILD_ID_LEN ;
 scalar_t__ QMI_RESULT_SUCCESS_V01 ;
 int QMI_WLFW_CAP_REQ_V01 ;
 int WLFW_CAP_REQ_MSG_V01_MAX_MSG_LEN ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_info (struct ath10k*,char*,int ,int ,int,...) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int kfree (struct wlfw_cap_resp_msg_v01*) ;
 struct wlfw_cap_resp_msg_v01* kzalloc (int,int ) ;
 int qmi_send_request (int *,int *,struct qmi_txn*,int ,int ,int ,struct wlfw_cap_req_msg_v01*) ;
 int qmi_txn_cancel (struct qmi_txn*) ;
 int qmi_txn_init (int *,struct qmi_txn*,int ,struct wlfw_cap_resp_msg_v01*) ;
 int qmi_txn_wait (struct qmi_txn*,int) ;
 int strlcpy (int ,int ,int) ;
 int test_bit (int ,int *) ;
 int wlfw_cap_req_msg_v01_ei ;
 int wlfw_cap_resp_msg_v01_ei ;

__attribute__((used)) static int ath10k_qmi_cap_send_sync_msg(struct ath10k_qmi *qmi)
{
 struct wlfw_cap_resp_msg_v01 *resp;
 struct wlfw_cap_req_msg_v01 req = {};
 struct ath10k *ar = qmi->ar;
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct qmi_txn txn;
 int ret;

 resp = kzalloc(sizeof(*resp), GFP_KERNEL);
 if (!resp)
  return -ENOMEM;

 ret = qmi_txn_init(&qmi->qmi_hdl, &txn, wlfw_cap_resp_msg_v01_ei, resp);
 if (ret < 0)
  goto out;

 ret = qmi_send_request(&qmi->qmi_hdl, ((void*)0), &txn,
          QMI_WLFW_CAP_REQ_V01,
          WLFW_CAP_REQ_MSG_V01_MAX_MSG_LEN,
          wlfw_cap_req_msg_v01_ei, &req);
 if (ret < 0) {
  qmi_txn_cancel(&txn);
  ath10k_err(ar, "failed to send capability request: %d\n", ret);
  goto out;
 }

 ret = qmi_txn_wait(&txn, ATH10K_QMI_TIMEOUT * HZ);
 if (ret < 0)
  goto out;

 if (resp->resp.result != QMI_RESULT_SUCCESS_V01) {
  ath10k_err(ar, "capability req rejected: %d\n", resp->resp.error);
  ret = -EINVAL;
  goto out;
 }

 if (resp->chip_info_valid) {
  qmi->chip_info.chip_id = resp->chip_info.chip_id;
  qmi->chip_info.chip_family = resp->chip_info.chip_family;
 }

 if (resp->board_info_valid)
  qmi->board_info.board_id = resp->board_info.board_id;
 else
  qmi->board_info.board_id = 0xFF;

 if (resp->soc_info_valid)
  qmi->soc_info.soc_id = resp->soc_info.soc_id;

 if (resp->fw_version_info_valid) {
  qmi->fw_version = resp->fw_version_info.fw_version;
  strlcpy(qmi->fw_build_timestamp, resp->fw_version_info.fw_build_timestamp,
   sizeof(qmi->fw_build_timestamp));
 }

 if (resp->fw_build_id_valid)
  strlcpy(qmi->fw_build_id, resp->fw_build_id,
   MAX_BUILD_ID_LEN + 1);

 if (!test_bit(ATH10K_SNOC_FLAG_REGISTERED, &ar_snoc->flags)) {
  ath10k_info(ar, "qmi chip_id 0x%x chip_family 0x%x board_id 0x%x soc_id 0x%x",
       qmi->chip_info.chip_id, qmi->chip_info.chip_family,
       qmi->board_info.board_id, qmi->soc_info.soc_id);
  ath10k_info(ar, "qmi fw_version 0x%x fw_build_timestamp %s fw_build_id %s",
       qmi->fw_version, qmi->fw_build_timestamp, qmi->fw_build_id);
 }

 kfree(resp);
 return 0;

out:
 kfree(resp);
 return ret;
}
