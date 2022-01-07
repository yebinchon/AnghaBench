
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath10k_fw_file {TYPE_3__* firmware; int firmware_len; int firmware_data; int htt_op_version; int wmi_op_version; } ;
struct TYPE_4__ {char* dir; } ;
struct TYPE_5__ {TYPE_1__ fw; } ;
struct ath10k {int dev; TYPE_2__ hw_params; } ;
typedef int filename ;
struct TYPE_6__ {int size; int data; } ;


 int ATH10K_DBG_TESTMODE ;
 int ATH10K_FW_HTT_OP_VERSION_10_1 ;
 char* ATH10K_FW_UTF_FILE ;
 int ATH10K_FW_WMI_OP_VERSION_10_1 ;
 int ath10k_dbg (struct ath10k*,int ,char*,char*,int) ;
 int ath10k_warn (struct ath10k*,char*,char*,int) ;
 int firmware_request_nowarn (TYPE_3__**,char*,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int ath10k_tm_fetch_utf_firmware_api_1(struct ath10k *ar,
           struct ath10k_fw_file *fw_file)
{
 char filename[100];
 int ret;

 snprintf(filename, sizeof(filename), "%s/%s",
   ar->hw_params.fw.dir, ATH10K_FW_UTF_FILE);


 ret = firmware_request_nowarn(&fw_file->firmware, filename, ar->dev);
 ath10k_dbg(ar, ATH10K_DBG_TESTMODE, "testmode fw request '%s': %d\n",
     filename, ret);

 if (ret) {
  ath10k_warn(ar, "failed to retrieve utf firmware '%s': %d\n",
       filename, ret);
  return ret;
 }







 fw_file->wmi_op_version = ATH10K_FW_WMI_OP_VERSION_10_1;
 fw_file->htt_op_version = ATH10K_FW_HTT_OP_VERSION_10_1;
 fw_file->firmware_data = fw_file->firmware->data;
 fw_file->firmware_len = fw_file->firmware->size;

 return 0;
}
