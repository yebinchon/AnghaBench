
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cxl_afu {int dummy; } ;


 int CXL_PSL_SERR_An ;
 int S_IRUSR ;
 int _cxl_p1n_addr (struct cxl_afu*,int ) ;
 int debugfs_create_io_x64 (char*,int ,struct dentry*,int ) ;

void cxl_debugfs_add_afu_regs_psl9(struct cxl_afu *afu, struct dentry *dir)
{
 debugfs_create_io_x64("serr", S_IRUSR, dir, _cxl_p1n_addr(afu, CXL_PSL_SERR_An));
}
