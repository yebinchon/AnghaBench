
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_smi_larb {scalar_t__ base; int * mmu; } ;
struct device {int dummy; } ;


 scalar_t__ SMI_LARB_MMU_EN ;
 struct mtk_smi_larb* dev_get_drvdata (struct device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_smi_larb_config_port_mt8173(struct device *dev)
{
 struct mtk_smi_larb *larb = dev_get_drvdata(dev);

 writel(*larb->mmu, larb->base + SMI_LARB_MMU_EN);
}
