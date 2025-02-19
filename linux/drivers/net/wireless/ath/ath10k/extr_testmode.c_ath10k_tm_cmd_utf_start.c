
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_6__ {char* fw_version; int * firmware; scalar_t__ codeswap_len; scalar_t__ codeswap_data; int wmi_op_version; } ;
struct TYPE_7__ {TYPE_2__ fw_file; } ;
struct TYPE_5__ {int utf_monitor; TYPE_4__ utf_mode_fw; } ;
struct ath10k {scalar_t__ state; int conf_mutex; TYPE_1__ testmode; int data_lock; } ;


 int ATH10K_DBG_TESTMODE ;
 int ATH10K_FIRMWARE_MODE_UTF ;
 scalar_t__ ATH10K_STATE_OFF ;
 scalar_t__ ATH10K_STATE_UTF ;
 int EALREADY ;
 int EBUSY ;
 int EEXIST ;
 scalar_t__ WARN_ON (int ) ;
 int ath10k_core_start (struct ath10k*,int ,TYPE_4__*) ;
 int ath10k_dbg (struct ath10k*,int ,char*,...) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_hif_power_down (struct ath10k*) ;
 int ath10k_hif_power_up (struct ath10k*,int ) ;
 int ath10k_info (struct ath10k*,char*,char const*) ;
 int ath10k_swap_code_seg_init (struct ath10k*,TYPE_2__*) ;
 int ath10k_swap_code_seg_release (struct ath10k*,TYPE_2__*) ;
 int ath10k_tm_fetch_firmware (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_firmware (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int ath10k_tm_cmd_utf_start(struct ath10k *ar, struct nlattr *tb[])
{
 const char *ver;
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_TESTMODE, "testmode cmd utf start\n");

 mutex_lock(&ar->conf_mutex);

 if (ar->state == ATH10K_STATE_UTF) {
  ret = -EALREADY;
  goto err;
 }


 if (ar->state != ATH10K_STATE_OFF) {
  ret = -EBUSY;
  goto err;
 }

 if (WARN_ON(ar->testmode.utf_mode_fw.fw_file.firmware != ((void*)0))) {

  ret = -EEXIST;
  goto err;
 }

 ret = ath10k_tm_fetch_firmware(ar);
 if (ret) {
  ath10k_err(ar, "failed to fetch UTF firmware: %d", ret);
  goto err;
 }

 if (ar->testmode.utf_mode_fw.fw_file.codeswap_data &&
     ar->testmode.utf_mode_fw.fw_file.codeswap_len) {
  ret = ath10k_swap_code_seg_init(ar,
      &ar->testmode.utf_mode_fw.fw_file);
  if (ret) {
   ath10k_warn(ar,
        "failed to init utf code swap segment: %d\n",
        ret);
   goto err_release_utf_mode_fw;
  }
 }

 spin_lock_bh(&ar->data_lock);
 ar->testmode.utf_monitor = 1;
 spin_unlock_bh(&ar->data_lock);

 ath10k_dbg(ar, ATH10K_DBG_TESTMODE, "testmode wmi version %d\n",
     ar->testmode.utf_mode_fw.fw_file.wmi_op_version);

 ret = ath10k_hif_power_up(ar, ATH10K_FIRMWARE_MODE_UTF);
 if (ret) {
  ath10k_err(ar, "failed to power up hif (testmode): %d\n", ret);
  ar->state = ATH10K_STATE_OFF;
  goto err_release_utf_mode_fw;
 }

 ret = ath10k_core_start(ar, ATH10K_FIRMWARE_MODE_UTF,
    &ar->testmode.utf_mode_fw);
 if (ret) {
  ath10k_err(ar, "failed to start core (testmode): %d\n", ret);
  ar->state = ATH10K_STATE_OFF;
  goto err_power_down;
 }

 ar->state = ATH10K_STATE_UTF;

 if (strlen(ar->testmode.utf_mode_fw.fw_file.fw_version) > 0)
  ver = ar->testmode.utf_mode_fw.fw_file.fw_version;
 else
  ver = "API 1";

 ath10k_info(ar, "UTF firmware %s started\n", ver);

 mutex_unlock(&ar->conf_mutex);

 return 0;

err_power_down:
 ath10k_hif_power_down(ar);

err_release_utf_mode_fw:
 if (ar->testmode.utf_mode_fw.fw_file.codeswap_data &&
     ar->testmode.utf_mode_fw.fw_file.codeswap_len)
  ath10k_swap_code_seg_release(ar,
          &ar->testmode.utf_mode_fw.fw_file);

 release_firmware(ar->testmode.utf_mode_fw.fw_file.firmware);
 ar->testmode.utf_mode_fw.fw_file.firmware = ((void*)0);

err:
 mutex_unlock(&ar->conf_mutex);

 return ret;
}
