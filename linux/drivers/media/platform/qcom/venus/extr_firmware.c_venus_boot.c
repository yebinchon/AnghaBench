
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_core {scalar_t__ use_tz; TYPE_1__* res; struct device* dev; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int fwname; } ;


 int CONFIG_QCOM_MDT_LOADER ;
 int EINVAL ;
 int EPROBE_DEFER ;
 int IS_ENABLED (int ) ;
 int VENUS_PAS_ID ;
 int dev_err (struct device*,char*) ;
 int qcom_scm_is_available () ;
 int qcom_scm_pas_auth_and_reset (int ) ;
 int venus_boot_no_tz (struct venus_core*,int ,size_t) ;
 int venus_load_fw (struct venus_core*,int ,int *,size_t*) ;

int venus_boot(struct venus_core *core)
{
 struct device *dev = core->dev;
 phys_addr_t mem_phys;
 size_t mem_size;
 int ret;

 if (!IS_ENABLED(CONFIG_QCOM_MDT_LOADER) ||
     (core->use_tz && !qcom_scm_is_available()))
  return -EPROBE_DEFER;

 ret = venus_load_fw(core, core->res->fwname, &mem_phys, &mem_size);
 if (ret) {
  dev_err(dev, "fail to load video firmware\n");
  return -EINVAL;
 }

 if (core->use_tz)
  ret = qcom_scm_pas_auth_and_reset(VENUS_PAS_ID);
 else
  ret = venus_boot_no_tz(core, mem_phys, mem_size);

 return ret;
}
