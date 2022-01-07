
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_mmcif_host {int dummy; } ;
struct mmc_request {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;





 int dev_err (struct device*,char*,int) ;
 struct device* sh_mmcif_host_to_dev (struct sh_mmcif_host*) ;
 int sh_mmcif_multi_read (struct sh_mmcif_host*,struct mmc_request*) ;
 int sh_mmcif_multi_write (struct sh_mmcif_host*,struct mmc_request*) ;
 int sh_mmcif_single_read (struct sh_mmcif_host*,struct mmc_request*) ;
 int sh_mmcif_single_write (struct sh_mmcif_host*,struct mmc_request*) ;

__attribute__((used)) static int sh_mmcif_data_trans(struct sh_mmcif_host *host,
          struct mmc_request *mrq, u32 opc)
{
 struct device *dev = sh_mmcif_host_to_dev(host);

 switch (opc) {
 case 132:
  sh_mmcif_multi_read(host, mrq);
  return 0;
 case 128:
  sh_mmcif_multi_write(host, mrq);
  return 0;
 case 129:
  sh_mmcif_single_write(host, mrq);
  return 0;
 case 131:
 case 130:
  sh_mmcif_single_read(host, mrq);
  return 0;
 default:
  dev_err(dev, "Unsupported CMD%d\n", opc);
  return -EINVAL;
 }
}
