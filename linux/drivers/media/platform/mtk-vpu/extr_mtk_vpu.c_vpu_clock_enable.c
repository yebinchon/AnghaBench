
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vpu {int vpu_mutex; int wdt_refcnt; int clk; } ;


 int VPU_WDT_REG ;
 int clk_enable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long vpu_cfg_readl (struct mtk_vpu*,int ) ;
 int vpu_cfg_writel (struct mtk_vpu*,long,int ) ;

__attribute__((used)) static int vpu_clock_enable(struct mtk_vpu *vpu)
{
 int ret;

 ret = clk_enable(vpu->clk);
 if (ret)
  return ret;

 mutex_lock(&vpu->vpu_mutex);
 if (!vpu->wdt_refcnt++)
  vpu_cfg_writel(vpu,
          vpu_cfg_readl(vpu, VPU_WDT_REG) | (1L << 31),
          VPU_WDT_REG);
 mutex_unlock(&vpu->vpu_mutex);

 return ret;
}
