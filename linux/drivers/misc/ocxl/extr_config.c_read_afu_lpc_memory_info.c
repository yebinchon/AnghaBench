
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned long long u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ocxl_fn_config {int dummy; } ;
struct ocxl_afu_config {unsigned long long lpc_mem_offset; int lpc_mem_size; int special_purpose_mem_offset; int special_purpose_mem_size; } ;


 unsigned long long EXTRACT_BITS (unsigned long long,int ,int) ;
 scalar_t__ OCXL_DVSEC_TEMPL_ALL_MEM_SZ ;
 scalar_t__ OCXL_DVSEC_TEMPL_LPC_MEM_START ;
 scalar_t__ OCXL_DVSEC_TEMPL_LPC_MEM_SZ ;
 int read_afu_info (struct pci_dev*,struct ocxl_fn_config*,scalar_t__,unsigned long long*) ;
 int read_template_version (struct pci_dev*,struct ocxl_fn_config*,int*,int*) ;

__attribute__((used)) static int read_afu_lpc_memory_info(struct pci_dev *dev,
    struct ocxl_fn_config *fn,
    struct ocxl_afu_config *afu)
{
 int rc;
 u32 val32;
 u16 templ_version;
 u16 templ_len;
 u64 total_mem_size = 0;
 u64 lpc_mem_size = 0;

 afu->lpc_mem_offset = 0;
 afu->lpc_mem_size = 0;
 afu->special_purpose_mem_offset = 0;
 afu->special_purpose_mem_size = 0;
 rc = read_afu_info(dev, fn, OCXL_DVSEC_TEMPL_ALL_MEM_SZ, &val32);
 if (rc)
  return rc;

 val32 = EXTRACT_BITS(val32, 0, 7);
 if (!val32)
  return 0;
 total_mem_size = 1ull << val32;

 rc = read_afu_info(dev, fn, OCXL_DVSEC_TEMPL_LPC_MEM_START, &val32);
 if (rc)
  return rc;

 afu->lpc_mem_offset = val32;

 rc = read_afu_info(dev, fn, OCXL_DVSEC_TEMPL_LPC_MEM_START + 4, &val32);
 if (rc)
  return rc;

 afu->lpc_mem_offset |= (u64) val32 << 32;

 rc = read_template_version(dev, fn, &templ_len, &templ_version);
 if (rc)
  return rc;

 if (templ_version >= 0x0101) {
  rc = read_afu_info(dev, fn,
    OCXL_DVSEC_TEMPL_LPC_MEM_SZ, &val32);
  if (rc)
   return rc;
  lpc_mem_size = val32;

  rc = read_afu_info(dev, fn,
    OCXL_DVSEC_TEMPL_LPC_MEM_SZ + 4, &val32);
  if (rc)
   return rc;
  lpc_mem_size |= (u64) val32 << 32;
 } else {
  lpc_mem_size = total_mem_size;
 }
 afu->lpc_mem_size = lpc_mem_size;

 if (lpc_mem_size < total_mem_size) {
  afu->special_purpose_mem_offset =
   afu->lpc_mem_offset + lpc_mem_size;
  afu->special_purpose_mem_size =
   total_mem_size - lpc_mem_size;
 }
 return 0;
}
