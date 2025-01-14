
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t mapped_mem_size; struct iommu_domain* iommu_domain; struct device* dev; } ;
struct venus_core {TYPE_1__ fw; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;


 int EPROBE_DEFER ;
 int IOMMU_PRIV ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 int VENUS_FW_START_ADDR ;
 int dev_err (struct device*,char*) ;
 int iommu_map (struct iommu_domain*,int ,int ,size_t,int) ;
 int venus_reset_cpu (struct venus_core*) ;

__attribute__((used)) static int venus_boot_no_tz(struct venus_core *core, phys_addr_t mem_phys,
       size_t mem_size)
{
 struct iommu_domain *iommu;
 struct device *dev;
 int ret;

 dev = core->fw.dev;
 if (!dev)
  return -EPROBE_DEFER;

 iommu = core->fw.iommu_domain;
 core->fw.mapped_mem_size = mem_size;

 ret = iommu_map(iommu, VENUS_FW_START_ADDR, mem_phys, mem_size,
   IOMMU_READ | IOMMU_WRITE | IOMMU_PRIV);
 if (ret) {
  dev_err(dev, "could not map video firmware region\n");
  return ret;
 }

 venus_reset_cpu(core);

 return 0;
}
