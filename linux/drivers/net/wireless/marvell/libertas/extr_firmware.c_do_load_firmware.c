
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int fw_device; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 int lbs_deb_fw (char*,...) ;
 int lbs_fw_loaded (struct lbs_private*,int,int *,int *) ;
 int request_firmware_nowait (int ,int,char const*,int ,int ,struct lbs_private*,void (*) (struct firmware const*,void*)) ;

__attribute__((used)) static void do_load_firmware(struct lbs_private *priv, const char *name,
 void (*cb)(const struct firmware *fw, void *context))
{
 int ret;

 lbs_deb_fw("Requesting %s\n", name);
 ret = request_firmware_nowait(THIS_MODULE, 1, name,
   priv->fw_device, GFP_KERNEL, priv, cb);
 if (ret) {
  lbs_deb_fw("request_firmware_nowait error %d\n", ret);
  lbs_fw_loaded(priv, ret, ((void*)0), ((void*)0));
 }
}
