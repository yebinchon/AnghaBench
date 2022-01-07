
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct cxl {int dummy; } ;


 int CXL_PSL_DSNDCTL ;
 int CXL_PSL_FIR_CNTL ;
 int CXL_PSL_RESLCKTO ;
 int CXL_PSL_SNWRALLOC ;
 int CXL_PSL_TRACE ;
 int cxl_calc_capp_routing (struct pci_dev*,int*,int *,int*) ;
 int cxl_p1_write (struct cxl*,int ,int) ;

__attribute__((used)) static int init_implementation_adapter_regs_psl8(struct cxl *adapter, struct pci_dev *dev)
{
 u64 psl_dsnctl, psl_fircntl;
 u64 chipid;
 u32 phb_index;
 u64 capp_unit_id;
 int rc;

 rc = cxl_calc_capp_routing(dev, &chipid, &phb_index, &capp_unit_id);
 if (rc)
  return rc;

 psl_dsnctl = 0x0000900000000000ULL;
 psl_dsnctl |= (0x2ULL << (63-38));

 psl_dsnctl |= (chipid << (63-5));
 psl_dsnctl |= (capp_unit_id << (63-13));

 cxl_p1_write(adapter, CXL_PSL_DSNDCTL, psl_dsnctl);
 cxl_p1_write(adapter, CXL_PSL_RESLCKTO, 0x20000000200ULL);

 cxl_p1_write(adapter, CXL_PSL_SNWRALLOC, 0x00000000FFFFFFFFULL);

 psl_fircntl = (0x2ULL << (63-3));
 psl_fircntl |= (0x1ULL << (63-6));
 psl_fircntl |= 0x1ULL;
 cxl_p1_write(adapter, CXL_PSL_FIR_CNTL, psl_fircntl);

 cxl_p1_write(adapter, CXL_PSL_TRACE, 0x0000FF7C00000000ULL);

 return 0;
}
