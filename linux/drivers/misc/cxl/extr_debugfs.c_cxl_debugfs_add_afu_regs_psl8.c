
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cxl_afu {int dummy; } ;


 int CXL_AFU_DEBUG_An ;
 int CXL_PSL_FIR_SLICE_An ;
 int CXL_PSL_SERR_An ;
 int CXL_PSL_SLICE_TRACE ;
 int CXL_SSTP0_An ;
 int CXL_SSTP1_An ;
 int S_IRUSR ;
 int S_IWUSR ;
 int _cxl_p1n_addr (struct cxl_afu*,int ) ;
 int _cxl_p2n_addr (struct cxl_afu*,int ) ;
 int debugfs_create_io_x64 (char*,int,struct dentry*,int ) ;

void cxl_debugfs_add_afu_regs_psl8(struct cxl_afu *afu, struct dentry *dir)
{
 debugfs_create_io_x64("sstp0", S_IRUSR, dir, _cxl_p2n_addr(afu, CXL_SSTP0_An));
 debugfs_create_io_x64("sstp1", S_IRUSR, dir, _cxl_p2n_addr(afu, CXL_SSTP1_An));

 debugfs_create_io_x64("fir", S_IRUSR, dir, _cxl_p1n_addr(afu, CXL_PSL_FIR_SLICE_An));
 debugfs_create_io_x64("serr", S_IRUSR, dir, _cxl_p1n_addr(afu, CXL_PSL_SERR_An));
 debugfs_create_io_x64("afu_debug", S_IRUSR, dir, _cxl_p1n_addr(afu, CXL_AFU_DEBUG_An));
 debugfs_create_io_x64("trace", S_IRUSR | S_IWUSR, dir, _cxl_p1n_addr(afu, CXL_PSL_SLICE_TRACE));
}
