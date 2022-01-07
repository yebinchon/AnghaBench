
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pm_runtime_get_sync (struct device*) ;

int mtk_smi_larb_get(struct device *larbdev)
{
 int ret = pm_runtime_get_sync(larbdev);

 return (ret < 0) ? ret : 0;
}
