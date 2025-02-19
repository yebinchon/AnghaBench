
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct cxl_afu {int dev; TYPE_3__* adapter; } ;
struct TYPE_8__ {scalar_t__ (* afu_reset ) (struct cxl_afu*) ;} ;
struct TYPE_7__ {TYPE_2__* native; } ;
struct TYPE_6__ {TYPE_1__* sl_ops; } ;
struct TYPE_5__ {scalar_t__ register_serr_irq; } ;


 int CXL_AFU_Cntl_An ;
 int CXL_AFU_Cntl_An_ES_Disabled ;
 int CXL_AFU_Cntl_An_ES_MASK ;
 int CXL_PSL9_DSISR_An_TF ;
 int CXL_PSL_AMBAR_An ;
 int CXL_PSL_DSISR_An ;
 int CXL_PSL_ErrStat_An ;
 int CXL_PSL_SERR_An ;
 int CXL_PSL_SPAP_An ;
 int CXL_PSL_TFC_An ;
 int CXL_PSL_TFC_An_A ;
 int CXL_PSL_TFC_An_AE ;
 int EIO ;
 scalar_t__ cxl_afu_disable (struct cxl_afu*) ;
 TYPE_4__* cxl_ops ;
 int cxl_p1n_read (struct cxl_afu*,int ) ;
 int cxl_p1n_write (struct cxl_afu*,int ,int) ;
 int cxl_p2n_read (struct cxl_afu*,int ) ;
 int cxl_p2n_write (struct cxl_afu*,int ,int) ;
 scalar_t__ cxl_psl_purge (struct cxl_afu*) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ stub1 (struct cxl_afu*) ;

__attribute__((used)) static int sanitise_afu_regs_psl9(struct cxl_afu *afu)
{
 u64 reg;






 reg = cxl_p2n_read(afu, CXL_AFU_Cntl_An);
 if ((reg & CXL_AFU_Cntl_An_ES_MASK) != CXL_AFU_Cntl_An_ES_Disabled) {
  dev_warn(&afu->dev, "WARNING: AFU was not disabled: %#016llx\n", reg);
  if (cxl_ops->afu_reset(afu))
   return -EIO;
  if (cxl_afu_disable(afu))
   return -EIO;
  if (cxl_psl_purge(afu))
   return -EIO;
 }
 cxl_p1n_write(afu, CXL_PSL_SPAP_An, 0x0000000000000000);
 cxl_p1n_write(afu, CXL_PSL_AMBAR_An, 0x0000000000000000);
 reg = cxl_p2n_read(afu, CXL_PSL_DSISR_An);
 if (reg) {
  dev_warn(&afu->dev, "AFU had pending DSISR: %#016llx\n", reg);
  if (reg & CXL_PSL9_DSISR_An_TF)
   cxl_p2n_write(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_AE);
  else
   cxl_p2n_write(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_A);
 }
 if (afu->adapter->native->sl_ops->register_serr_irq) {
  reg = cxl_p1n_read(afu, CXL_PSL_SERR_An);
  if (reg) {
   if (reg & ~0x000000007fffffff)
    dev_warn(&afu->dev, "AFU had pending SERR: %#016llx\n", reg);
   cxl_p1n_write(afu, CXL_PSL_SERR_An, reg & ~0xffff);
  }
 }
 reg = cxl_p2n_read(afu, CXL_PSL_ErrStat_An);
 if (reg) {
  dev_warn(&afu->dev, "AFU had pending error status: %#016llx\n", reg);
  cxl_p2n_write(afu, CXL_PSL_ErrStat_An, reg);
 }

 return 0;
}
