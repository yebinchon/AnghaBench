
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cxl_afu {int pp_size; int max_procs_virtualised; int crs_num; int modes_supported; int dev; scalar_t__ pp_psa; TYPE_2__* native; TYPE_1__* adapter; scalar_t__ psa; } ;
struct TYPE_6__ {int (* afu_cr_read32 ) (struct cxl_afu*,int,int ,scalar_t__*) ;} ;
struct TYPE_5__ {scalar_t__ pp_offset; } ;
struct TYPE_4__ {scalar_t__ ps_size; } ;


 int CXL_MODE_DEDICATED ;
 int EINVAL ;
 int ENODEV ;
 int PAGE_SIZE ;
 TYPE_3__* cxl_ops ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*,int) ;
 int stub1 (struct cxl_afu*,int,int ,scalar_t__*) ;

__attribute__((used)) static int cxl_afu_descriptor_looks_ok(struct cxl_afu *afu)
{
 int i, rc;
 u32 val;

 if (afu->psa && afu->adapter->ps_size <
   (afu->native->pp_offset + afu->pp_size*afu->max_procs_virtualised)) {
  dev_err(&afu->dev, "per-process PSA can't fit inside the PSA!\n");
  return -ENODEV;
 }

 if (afu->pp_psa && (afu->pp_size < PAGE_SIZE))
  dev_warn(&afu->dev, "AFU uses pp_size(%#016llx) < PAGE_SIZE per-process PSA!\n", afu->pp_size);

 for (i = 0; i < afu->crs_num; i++) {
  rc = cxl_ops->afu_cr_read32(afu, i, 0, &val);
  if (rc || val == 0) {
   dev_err(&afu->dev, "ABORTING: AFU configuration record %i is invalid\n", i);
   return -EINVAL;
  }
 }

 if ((afu->modes_supported & ~CXL_MODE_DEDICATED) && afu->max_procs_virtualised == 0) {
  dev_err(&afu->dev, "AFU does not support any processes\n");
  return -EINVAL;
 }

 return 0;
}
