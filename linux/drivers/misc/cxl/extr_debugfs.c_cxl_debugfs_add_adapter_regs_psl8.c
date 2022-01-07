
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cxl {int dummy; } ;


 int CXL_PSL_FIR1 ;
 int CXL_PSL_FIR2 ;
 int CXL_PSL_FIR_CNTL ;
 int CXL_PSL_TRACE ;
 int S_IRUSR ;
 int S_IWUSR ;
 int _cxl_p1_addr (struct cxl*,int ) ;
 int debugfs_create_io_x64 (char*,int,struct dentry*,int ) ;

void cxl_debugfs_add_adapter_regs_psl8(struct cxl *adapter, struct dentry *dir)
{
 debugfs_create_io_x64("fir1", S_IRUSR, dir, _cxl_p1_addr(adapter, CXL_PSL_FIR1));
 debugfs_create_io_x64("fir2", S_IRUSR, dir, _cxl_p1_addr(adapter, CXL_PSL_FIR2));
 debugfs_create_io_x64("fir_cntl", S_IRUSR, dir, _cxl_p1_addr(adapter, CXL_PSL_FIR_CNTL));
 debugfs_create_io_x64("trace", S_IRUSR | S_IWUSR, dir, _cxl_p1_addr(adapter, CXL_PSL_TRACE));
}
