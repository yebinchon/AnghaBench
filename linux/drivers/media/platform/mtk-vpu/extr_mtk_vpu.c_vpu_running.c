
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vpu {int dummy; } ;


 int BIT (int ) ;
 int VPU_RESET ;
 int vpu_cfg_readl (struct mtk_vpu*,int ) ;

__attribute__((used)) static inline bool vpu_running(struct mtk_vpu *vpu)
{
 return vpu_cfg_readl(vpu, VPU_RESET) & BIT(0);
}
