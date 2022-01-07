
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_fcp_device {struct device* dev; } ;
struct device {int dummy; } ;



struct device *rcar_fcp_get_device(struct rcar_fcp_device *fcp)
{
 return fcp->dev;
}
