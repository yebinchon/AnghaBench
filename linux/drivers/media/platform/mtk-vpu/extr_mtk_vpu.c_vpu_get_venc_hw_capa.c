
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {unsigned int enc_capability; } ;
struct mtk_vpu {TYPE_1__ run; } ;


 struct mtk_vpu* platform_get_drvdata (struct platform_device*) ;

unsigned int vpu_get_venc_hw_capa(struct platform_device *pdev)
{
 struct mtk_vpu *vpu = platform_get_drvdata(pdev);

 return vpu->run.enc_capability;
}
