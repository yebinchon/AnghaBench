
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_irq_info {scalar_t__ proc_handle; void* errstat; void* afu_err; void* dsr; void* dar; void* dsisr; } ;
struct cxl_afu {int adapter; } ;
struct TYPE_2__ {int (* link_ok ) (int ,struct cxl_afu*) ;} ;


 int CXL_AFU_ERR_An ;
 int CXL_PSL_DAR_An ;
 int CXL_PSL_DSISR_An ;
 int CXL_PSL_DSR_An ;
 int CXL_PSL_ErrStat_An ;
 int EIO ;
 scalar_t__ cxl_is_power8 () ;
 TYPE_1__* cxl_ops ;
 void* cxl_p2n_read (struct cxl_afu*,int ) ;
 int stub1 (int ,struct cxl_afu*) ;

__attribute__((used)) static int native_get_irq_info(struct cxl_afu *afu, struct cxl_irq_info *info)
{



 if (!cxl_ops->link_ok(afu->adapter, afu))
  return -EIO;

 info->dsisr = cxl_p2n_read(afu, CXL_PSL_DSISR_An);
 info->dar = cxl_p2n_read(afu, CXL_PSL_DAR_An);
 if (cxl_is_power8())
  info->dsr = cxl_p2n_read(afu, CXL_PSL_DSR_An);
 info->afu_err = cxl_p2n_read(afu, CXL_AFU_ERR_An);
 info->errstat = cxl_p2n_read(afu, CXL_PSL_ErrStat_An);
 info->proc_handle = 0;

 return 0;
}
