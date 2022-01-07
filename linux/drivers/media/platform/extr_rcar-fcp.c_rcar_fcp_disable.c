
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_fcp_device {int dev; } ;


 int pm_runtime_put (int ) ;

void rcar_fcp_disable(struct rcar_fcp_device *fcp)
{
 if (fcp)
  pm_runtime_put(fcp->dev);
}
