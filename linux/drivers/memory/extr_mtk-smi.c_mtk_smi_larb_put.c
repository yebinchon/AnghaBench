
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pm_runtime_put_sync (struct device*) ;

void mtk_smi_larb_put(struct device *larbdev)
{
 pm_runtime_put_sync(larbdev);
}
