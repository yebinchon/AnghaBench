
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {TYPE_1__* plat_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int IS_TWOPORT (struct s5p_mfc_dev*) ;
 scalar_t__ exynos_is_iommu_available (struct device*) ;
 int s5p_mfc_release_firmware (struct s5p_mfc_dev*) ;
 int s5p_mfc_unconfigure_2port_memory (struct s5p_mfc_dev*) ;
 int s5p_mfc_unconfigure_common_memory (struct s5p_mfc_dev*) ;

__attribute__((used)) static void s5p_mfc_unconfigure_dma_memory(struct s5p_mfc_dev *mfc_dev)
{
 struct device *dev = &mfc_dev->plat_dev->dev;

 s5p_mfc_release_firmware(mfc_dev);
 if (exynos_is_iommu_available(dev) || !IS_TWOPORT(mfc_dev))
  s5p_mfc_unconfigure_common_memory(mfc_dev);
 else
  s5p_mfc_unconfigure_2port_memory(mfc_dev);
}
