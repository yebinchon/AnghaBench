
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_pf {TYPE_1__* pdev; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ICE_DDP_PKG_FILE ;
 int dev_err (struct device*,char*) ;
 int firmware_request_nowarn (struct firmware const**,char*,struct device*) ;
 char* ice_get_opt_fw_name (struct ice_pf*) ;
 int ice_load_pkg (struct firmware const*,struct ice_pf*) ;
 int kfree (char*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,struct device*) ;

__attribute__((used)) static void ice_request_fw(struct ice_pf *pf)
{
 char *opt_fw_filename = ice_get_opt_fw_name(pf);
 const struct firmware *firmware = ((void*)0);
 struct device *dev = &pf->pdev->dev;
 int err = 0;





 if (opt_fw_filename) {
  err = firmware_request_nowarn(&firmware, opt_fw_filename, dev);
  if (err) {
   kfree(opt_fw_filename);
   goto dflt_pkg_load;
  }


  ice_load_pkg(firmware, pf);
  kfree(opt_fw_filename);
  release_firmware(firmware);
  return;
 }

dflt_pkg_load:
 err = request_firmware(&firmware, ICE_DDP_PKG_FILE, dev);
 if (err) {
  dev_err(dev,
   "The DDP package file was not found or could not be read. Entering Safe Mode\n");
  return;
 }


 ice_load_pkg(firmware, pf);
 release_firmware(firmware);
}
