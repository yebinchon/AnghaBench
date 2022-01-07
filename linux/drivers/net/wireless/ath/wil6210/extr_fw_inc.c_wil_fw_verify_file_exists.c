
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int dummy; } ;
struct firmware {int dummy; } ;


 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int ) ;
 int wil_dbg_fw (struct wil6210_priv*,char*,char const*,int) ;
 int wil_to_dev (struct wil6210_priv*) ;

bool wil_fw_verify_file_exists(struct wil6210_priv *wil, const char *name)
{
 const struct firmware *fw;
 int rc;

 rc = request_firmware(&fw, name, wil_to_dev(wil));
 if (!rc)
  release_firmware(fw);
 else
  wil_dbg_fw(wil, "<%s> not available: %d\n", name, rc);
 return !rc;
}
