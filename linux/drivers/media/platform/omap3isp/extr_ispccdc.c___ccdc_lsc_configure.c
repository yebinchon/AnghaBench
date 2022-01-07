
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma; } ;
struct ispccdc_lsc_config_req {TYPE_1__ table; int config; int enable; } ;
struct isp_ccdc_device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ ccdc_lsc_busy (struct isp_ccdc_device*) ;
 int ccdc_lsc_program_table (struct isp_ccdc_device*,int ) ;
 int ccdc_lsc_setup_regs (struct isp_ccdc_device*,int *) ;
 scalar_t__ ccdc_lsc_validate_config (struct isp_ccdc_device*,int *) ;
 int dev_dbg (int ,char*) ;
 int to_device (struct isp_ccdc_device*) ;

__attribute__((used)) static int __ccdc_lsc_configure(struct isp_ccdc_device *ccdc,
    struct ispccdc_lsc_config_req *req)
{
 if (!req->enable)
  return -EINVAL;

 if (ccdc_lsc_validate_config(ccdc, &req->config) < 0) {
  dev_dbg(to_device(ccdc), "Discard LSC configuration\n");
  return -EINVAL;
 }

 if (ccdc_lsc_busy(ccdc))
  return -EBUSY;

 ccdc_lsc_setup_regs(ccdc, &req->config);
 ccdc_lsc_program_table(ccdc, req->table.dma);
 return 0;
}
