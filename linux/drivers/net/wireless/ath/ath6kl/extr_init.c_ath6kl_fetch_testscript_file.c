
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* testscript; char* dir; } ;
struct TYPE_4__ {TYPE_1__ fw; } ;
struct ath6kl {int testmode; int fw_testscript_len; int * fw_testscript; TYPE_2__ hw; } ;
typedef int filename ;


 int ath6kl_err (char*,char*,int) ;
 int ath6kl_get_fw (struct ath6kl*,char*,int **,int *) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int ath6kl_fetch_testscript_file(struct ath6kl *ar)
{
 char filename[100];
 int ret;

 if (ar->testmode != 2)
  return 0;

 if (ar->fw_testscript != ((void*)0))
  return 0;

 if (ar->hw.fw.testscript == ((void*)0))
  return 0;

 snprintf(filename, sizeof(filename), "%s/%s",
   ar->hw.fw.dir, ar->hw.fw.testscript);

 ret = ath6kl_get_fw(ar, filename, &ar->fw_testscript,
    &ar->fw_testscript_len);
 if (ret) {
  ath6kl_err("Failed to get testscript file %s: %d\n",
      filename, ret);
  return ret;
 }

 return 0;
}
