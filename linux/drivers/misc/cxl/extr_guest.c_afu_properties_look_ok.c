
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {scalar_t__ pp_irqs; int max_procs_virtualised; int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int afu_properties_look_ok(struct cxl_afu *afu)
{
 if (afu->pp_irqs < 0) {
  dev_err(&afu->dev, "Unexpected per-process minimum interrupt value\n");
  return -EINVAL;
 }

 if (afu->max_procs_virtualised < 1) {
  dev_err(&afu->dev, "Unexpected max number of processes virtualised value\n");
  return -EINVAL;
 }

 return 0;
}
