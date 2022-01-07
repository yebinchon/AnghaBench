
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct cxllib_xsl_config {scalar_t__ dra; int bar_addr; int log_bar_size; int version; int dsnctl; } ;


 int CPU_FTR_HVMODE ;
 int CXL_CAPI_WINDOW_LOG_SIZE ;
 int CXL_CAPI_WINDOW_START ;
 scalar_t__ CXL_INVALID_DRA ;
 int CXL_XSL_CONFIG_CURRENT_VERSION ;
 int EINVAL ;
 int allocate_dummy_read_buf () ;
 int cpu_has_feature (int ) ;
 int cxl_calc_capp_routing (struct pci_dev*,int *,int *,int *) ;
 int cxl_get_xsl9_dsnctl (struct pci_dev*,int ,int *) ;
 int dra_mutex ;
 scalar_t__ dummy_read_addr ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cxllib_get_xsl_config(struct pci_dev *dev, struct cxllib_xsl_config *cfg)
{
 int rc;
 u32 phb_index;
 u64 chip_id, capp_unit_id;

 if (!cpu_has_feature(CPU_FTR_HVMODE))
  return -EINVAL;

 mutex_lock(&dra_mutex);
 if (dummy_read_addr == CXL_INVALID_DRA) {
  rc = allocate_dummy_read_buf();
  if (rc) {
   mutex_unlock(&dra_mutex);
   return rc;
  }
 }
 mutex_unlock(&dra_mutex);

 rc = cxl_calc_capp_routing(dev, &chip_id, &phb_index, &capp_unit_id);
 if (rc)
  return rc;

 rc = cxl_get_xsl9_dsnctl(dev, capp_unit_id, &cfg->dsnctl);
 if (rc)
  return rc;

 cfg->version = CXL_XSL_CONFIG_CURRENT_VERSION;
 cfg->log_bar_size = CXL_CAPI_WINDOW_LOG_SIZE;
 cfg->bar_addr = CXL_CAPI_WINDOW_START;
 cfg->dra = dummy_read_addr;
 return 0;
}
