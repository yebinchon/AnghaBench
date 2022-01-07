
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* fw; char* dir; } ;
struct TYPE_3__ {TYPE_2__ fw; } ;
struct ath6kl {int fw_len; int * fw; TYPE_1__ hw; } ;
typedef int filename ;


 int EINVAL ;
 scalar_t__ WARN_ON (int ) ;
 int ath6kl_err (char*,char*,int) ;
 int ath6kl_get_fw (struct ath6kl*,char*,int **,int *) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int ath6kl_fetch_fw_file(struct ath6kl *ar)
{
 char filename[100];
 int ret;

 if (ar->fw != ((void*)0))
  return 0;


 if (WARN_ON(ar->hw.fw.fw == ((void*)0)))
  return -EINVAL;

 snprintf(filename, sizeof(filename), "%s/%s",
   ar->hw.fw.dir, ar->hw.fw.fw);

 ret = ath6kl_get_fw(ar, filename, &ar->fw, &ar->fw_len);
 if (ret) {
  ath6kl_err("Failed to get firmware file %s: %d\n",
      filename, ret);
  return ret;
 }

 return 0;
}
