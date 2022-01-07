
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dev; } ;
struct cxl {TYPE_1__* native; } ;
struct TYPE_2__ {int no_data_cache; } ;


 int CXL_PSL9_APCDEDALLOC ;
 int CXL_PSL9_APCDEDTYPE ;
 int CXL_PSL9_DEBUG ;
 int CXL_PSL9_DSNDCTL ;
 int CXL_PSL9_FIR_CNTL ;
 int CXL_PSL_DEBUG_CDC ;
 int CXL_XSL9_DEF ;
 int CXL_XSL9_DSNCTL ;
 int CXL_XSL9_INV ;
 int cxl_calc_capp_routing (struct pci_dev*,int*,int*,int*) ;
 int cxl_get_xsl9_dsnctl (struct pci_dev*,int,int*) ;
 int cxl_p1_read (struct cxl*,int ) ;
 int cxl_p1_write (struct cxl*,int ,int) ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static int init_implementation_adapter_regs_psl9(struct cxl *adapter,
       struct pci_dev *dev)
{
 u64 xsl_dsnctl, psl_fircntl;
 u64 chipid;
 u32 phb_index;
 u64 capp_unit_id;
 u64 psl_debug;
 int rc;

 rc = cxl_calc_capp_routing(dev, &chipid, &phb_index, &capp_unit_id);
 if (rc)
  return rc;

 rc = cxl_get_xsl9_dsnctl(dev, capp_unit_id, &xsl_dsnctl);
 if (rc)
  return rc;

 cxl_p1_write(adapter, CXL_XSL9_DSNCTL, xsl_dsnctl);


 psl_fircntl = (0x2ULL << (63-3));
 psl_fircntl |= (0x1ULL << (63-6));
 psl_fircntl |= 0x1ULL;
 cxl_p1_write(adapter, CXL_PSL9_FIR_CNTL, psl_fircntl);




 cxl_p1_write(adapter, CXL_PSL9_DSNDCTL, 0x0001001000012A10ULL);
 cxl_p1_write(adapter, CXL_XSL9_DEF, 0x51F8000000000005ULL);


 cxl_p1_write(adapter, CXL_XSL9_INV, 0x0000040007FFC200ULL);

 if (phb_index == 3) {

  cxl_p1_write(adapter, CXL_PSL9_APCDEDTYPE, 0x40000FF3FFFF0000ULL);
 }


 cxl_p1_write(adapter, CXL_PSL9_APCDEDALLOC, 0x800F000200000000ULL);


 cxl_p1_write(adapter, CXL_PSL9_DEBUG, 0xC000000000000000ULL);





 psl_debug = cxl_p1_read(adapter, CXL_PSL9_DEBUG);
 if (psl_debug & CXL_PSL_DEBUG_CDC) {
  dev_dbg(&dev->dev, "No data-cache present\n");
  adapter->native->no_data_cache = 1;
 }

 return 0;
}
