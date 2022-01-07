
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mtk_vpu {TYPE_1__* extmem; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int pa; int va; } ;


 size_t VPU_EXT_D_SIZE ;
 size_t VPU_EXT_P_SIZE ;
 int dma_free_coherent (struct device*,size_t,int ,int ) ;

__attribute__((used)) static void vpu_free_ext_mem(struct mtk_vpu *vpu, u8 fw_type)
{
 struct device *dev = vpu->dev;
 size_t fw_ext_size = fw_type ? VPU_EXT_D_SIZE : VPU_EXT_P_SIZE;

 dma_free_coherent(dev, fw_ext_size, vpu->extmem[fw_type].va,
     vpu->extmem[fw_type].pa);
}
