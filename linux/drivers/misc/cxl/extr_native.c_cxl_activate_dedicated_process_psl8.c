
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int num_procs; int current_mode; int dev; } ;


 int CXL_AURP0_An ;
 int CXL_AURP1_An ;
 int CXL_CSRP_An ;
 int CXL_HAURP_An ;
 int CXL_MODE_DEDICATED ;
 int CXL_PSL_AMOR_An ;
 int CXL_PSL_CtxTime_An ;
 int CXL_PSL_LPID_An ;
 int CXL_PSL_SCNTL_An ;
 int CXL_PSL_SCNTL_An_PM_Process ;
 int CXL_PSL_SDR_An ;
 int CXL_PSL_SPAP_An ;
 int SPRN_LPID ;
 int SPRN_SDR1 ;
 int cxl_chardev_d_afu_add (struct cxl_afu*) ;
 int cxl_p1n_write (struct cxl_afu*,int ,int) ;
 int cxl_p2n_write (struct cxl_afu*,int ,int ) ;
 int dev_info (int *,char*) ;
 int mfspr (int ) ;

int cxl_activate_dedicated_process_psl8(struct cxl_afu *afu)
{
 dev_info(&afu->dev, "Activating dedicated process mode\n");

 cxl_p1n_write(afu, CXL_PSL_SCNTL_An, CXL_PSL_SCNTL_An_PM_Process);

 cxl_p1n_write(afu, CXL_PSL_CtxTime_An, 0);
 cxl_p1n_write(afu, CXL_PSL_SPAP_An, 0);
 cxl_p1n_write(afu, CXL_PSL_AMOR_An, 0xFFFFFFFFFFFFFFFFULL);
 cxl_p1n_write(afu, CXL_PSL_LPID_An, mfspr(SPRN_LPID));
 cxl_p1n_write(afu, CXL_HAURP_An, 0);
 cxl_p1n_write(afu, CXL_PSL_SDR_An, mfspr(SPRN_SDR1));

 cxl_p2n_write(afu, CXL_CSRP_An, 0);
 cxl_p2n_write(afu, CXL_AURP0_An, 0);
 cxl_p2n_write(afu, CXL_AURP1_An, 0);

 afu->current_mode = CXL_MODE_DEDICATED;
 afu->num_procs = 1;

 return cxl_chardev_d_afu_add(afu);
}
