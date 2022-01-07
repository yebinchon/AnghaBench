
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus; } ;
struct ath10k {void* cal_file; int dev; TYPE_1__ hif; void* pre_cal_file; } ;
typedef int filename ;


 int ATH10K_DBG_BOOT ;
 int ATH10K_FW_DIR ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int ath10k_bus_str (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,char*) ;
 void* ath10k_fetch_fw_file (struct ath10k*,int ,char*) ;
 int dev_name (int ) ;
 int scnprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static int ath10k_fetch_cal_file(struct ath10k *ar)
{
 char filename[100];


 scnprintf(filename, sizeof(filename), "pre-cal-%s-%s.bin",
    ath10k_bus_str(ar->hif.bus), dev_name(ar->dev));

 ar->pre_cal_file = ath10k_fetch_fw_file(ar, ATH10K_FW_DIR, filename);
 if (!IS_ERR(ar->pre_cal_file))
  goto success;


 scnprintf(filename, sizeof(filename), "cal-%s-%s.bin",
    ath10k_bus_str(ar->hif.bus), dev_name(ar->dev));

 ar->cal_file = ath10k_fetch_fw_file(ar, ATH10K_FW_DIR, filename);
 if (IS_ERR(ar->cal_file))

  return PTR_ERR(ar->cal_file);
success:
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "found calibration file %s/%s\n",
     ATH10K_FW_DIR, filename);

 return 0;
}
