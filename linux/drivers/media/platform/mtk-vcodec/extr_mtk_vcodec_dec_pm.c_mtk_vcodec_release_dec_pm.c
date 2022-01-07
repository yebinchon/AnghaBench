
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct mtk_vcodec_dev {TYPE_1__ pm; } ;


 int pm_runtime_disable (int ) ;

void mtk_vcodec_release_dec_pm(struct mtk_vcodec_dev *dev)
{
 pm_runtime_disable(dev->pm.dev);
}
