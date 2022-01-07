
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* otp; char* dir; } ;
struct TYPE_3__ {TYPE_2__ fw; } ;
struct ath6kl {int fw_otp_len; int * fw_otp; TYPE_1__ hw; } ;
typedef int filename ;


 int ATH6KL_DBG_BOOT ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_err (char*,char*,int) ;
 int ath6kl_get_fw (struct ath6kl*,char*,int **,int *) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int ath6kl_fetch_otp_file(struct ath6kl *ar)
{
 char filename[100];
 int ret;

 if (ar->fw_otp != ((void*)0))
  return 0;

 if (ar->hw.fw.otp == ((void*)0)) {
  ath6kl_dbg(ATH6KL_DBG_BOOT,
      "no OTP file configured for this hw\n");
  return 0;
 }

 snprintf(filename, sizeof(filename), "%s/%s",
   ar->hw.fw.dir, ar->hw.fw.otp);

 ret = ath6kl_get_fw(ar, filename, &ar->fw_otp,
       &ar->fw_otp_len);
 if (ret) {
  ath6kl_err("Failed to get OTP file %s: %d\n",
      filename, ret);
  return ret;
 }

 return 0;
}
