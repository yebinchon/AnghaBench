
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_fcp_device {int dev; } ;


 int put_device (int ) ;

void rcar_fcp_put(struct rcar_fcp_device *fcp)
{
 if (fcp)
  put_device(fcp->dev);
}
