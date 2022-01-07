
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_smi_larb_iommu {int mmu; struct device* dev; } ;
struct mtk_smi_larb {unsigned int larbid; int * mmu; } ;
struct device {int dummy; } ;


 int ENODEV ;
 unsigned int MTK_LARB_NR_MAX ;
 struct mtk_smi_larb* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int
mtk_smi_larb_bind(struct device *dev, struct device *master, void *data)
{
 struct mtk_smi_larb *larb = dev_get_drvdata(dev);
 struct mtk_smi_larb_iommu *larb_mmu = data;
 unsigned int i;

 for (i = 0; i < MTK_LARB_NR_MAX; i++) {
  if (dev == larb_mmu[i].dev) {
   larb->larbid = i;
   larb->mmu = &larb_mmu[i].mmu;
   return 0;
  }
 }
 return -ENODEV;
}
