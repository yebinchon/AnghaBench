
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct ath10k {int dev; } ;
typedef int filename ;


 int ATH10K_DBG_BOOT ;
 int ENOENT ;
 struct firmware const* ERR_PTR (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,char*,int) ;
 int firmware_request_nowarn (struct firmware const**,char*,int ) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static const struct firmware *ath10k_fetch_fw_file(struct ath10k *ar,
         const char *dir,
         const char *file)
{
 char filename[100];
 const struct firmware *fw;
 int ret;

 if (file == ((void*)0))
  return ERR_PTR(-ENOENT);

 if (dir == ((void*)0))
  dir = ".";

 snprintf(filename, sizeof(filename), "%s/%s", dir, file);
 ret = firmware_request_nowarn(&fw, filename, ar->dev);
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot fw request '%s': %d\n",
     filename, ret);

 if (ret)
  return ERR_PTR(ret);

 return fw;
}
