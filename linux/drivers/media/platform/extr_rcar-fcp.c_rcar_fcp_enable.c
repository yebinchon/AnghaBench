
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_fcp_device {int dev; } ;


 int pm_runtime_get_sync (int ) ;

int rcar_fcp_enable(struct rcar_fcp_device *fcp)
{
 int ret;

 if (!fcp)
  return 0;

 ret = pm_runtime_get_sync(fcp->dev);
 if (ret < 0)
  return ret;

 return 0;
}
