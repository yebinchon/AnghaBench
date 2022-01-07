
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct device_node {int dummy; } ;
struct cxl_afu {scalar_t__ psn_phys; int psa; int max_procs_virtualised; int irqs_max; int pp_irqs; int crs_num; int pp_psa; int serr_hwirq; TYPE_2__* adapter; TYPE_1__* guest; scalar_t__ crs_offset; int crs_len; scalar_t__ eb_offset; int eb_len; } ;
typedef int __be32 ;
struct TYPE_6__ {int (* afu_cr_read16 ) (struct cxl_afu*,int,int ,int*) ;int (* afu_cr_read32 ) (struct cxl_afu*,int,int ,int*) ;} ;
struct TYPE_5__ {int ps_size; } ;
struct TYPE_4__ {int max_ints; int handle; int p2n_size; int p2n_phys; } ;


 int PCI_CLASS_REVISION ;
 int PCI_DEVICE_ID ;
 int PCI_VENDOR_ID ;
 TYPE_3__* cxl_ops ;
 scalar_t__ cxl_verbose ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int pr_devel (char*,int,...) ;
 int pr_info (char*,...) ;
 int read_phys_addr (struct device_node*,char*,struct cxl_afu*) ;
 int read_prop64_dword (struct device_node*,char*,int *) ;
 int * read_prop_dword (struct device_node*,char*,int*) ;
 int read_prop_string (struct device_node*,char*) ;
 int read_vpd (int *,struct cxl_afu*) ;
 scalar_t__ strlen (char*) ;
 int stub1 (struct cxl_afu*,int,int ,int*) ;
 int stub2 (struct cxl_afu*,int,int ,int*) ;
 int stub3 (struct cxl_afu*,int,int ,int*) ;

int cxl_of_read_afu_properties(struct cxl_afu *afu, struct device_node *np)
{
 int i, len, rc;
 char *p;
 const __be32 *prop;
 u16 device_id, vendor_id;
 u32 val = 0, class_code;



 if (cxl_verbose) {
  pr_info("Dump of the 'ibm,coherent-platform-function' node properties:\n");

  prop = of_get_property(np, "compatible", &len);
  i = 0;
  while (i < len) {
   p = (char *) prop + i;
   pr_info("compatible: %s\n", p);
   i += strlen(p) + 1;
  }
  read_prop_string(np, "name");
 }

 rc = read_phys_addr(np, "reg", afu);
 if (rc)
  return rc;

 rc = read_phys_addr(np, "assigned-addresses", afu);
 if (rc)
  return rc;

 if (afu->psn_phys == 0)
  afu->psa = 0;
 else
  afu->psa = 1;

 if (cxl_verbose) {
  read_prop_string(np, "ibm,loc-code");
  read_prop_string(np, "device_type");
 }

 read_prop_dword(np, "ibm,#processes", &afu->max_procs_virtualised);

 if (cxl_verbose) {
  read_prop_dword(np, "ibm,scratchpad-size", &val);
  read_prop_dword(np, "ibm,programmable", &val);
  read_prop_string(np, "ibm,phandle");
  read_vpd(((void*)0), afu);
 }

 read_prop_dword(np, "ibm,max-ints-per-process", &afu->guest->max_ints);
 afu->irqs_max = afu->guest->max_ints;

 prop = read_prop_dword(np, "ibm,min-ints-per-process", &afu->pp_irqs);
 if (prop) {




  afu->pp_irqs--;
 }

 if (cxl_verbose) {
  read_prop_dword(np, "ibm,max-ints", &val);
  read_prop_dword(np, "ibm,vpd-size", &val);
 }

 read_prop64_dword(np, "ibm,error-buffer-size", &afu->eb_len);
 afu->eb_offset = 0;

 if (cxl_verbose)
  read_prop_dword(np, "ibm,config-record-type", &val);

 read_prop64_dword(np, "ibm,config-record-size", &afu->crs_len);
 afu->crs_offset = 0;

 read_prop_dword(np, "ibm,#config-records", &afu->crs_num);

 if (cxl_verbose) {
  for (i = 0; i < afu->crs_num; i++) {
   rc = cxl_ops->afu_cr_read16(afu, i, PCI_DEVICE_ID,
      &device_id);
   if (!rc)
    pr_info("record %d - device-id: %#x\n",
     i, device_id);
   rc = cxl_ops->afu_cr_read16(afu, i, PCI_VENDOR_ID,
      &vendor_id);
   if (!rc)
    pr_info("record %d - vendor-id: %#x\n",
     i, vendor_id);
   rc = cxl_ops->afu_cr_read32(afu, i, PCI_CLASS_REVISION,
      &class_code);
   if (!rc) {
    class_code >>= 8;
    pr_info("record %d - class-code: %#x\n",
     i, class_code);
   }
  }

  read_prop_dword(np, "ibm,function-number", &val);
  read_prop_dword(np, "ibm,privileged-function", &val);
  read_prop_dword(np, "vendor-id", &val);
  read_prop_dword(np, "device-id", &val);
  read_prop_dword(np, "revision-id", &val);
  read_prop_dword(np, "class-code", &val);
  read_prop_dword(np, "subsystem-vendor-id", &val);
  read_prop_dword(np, "subsystem-id", &val);
 }




 val = 0;
 prop = read_prop_dword(np, "ibm,process-mmio", &val);
 if (prop && val == 1)
  afu->pp_psa = 1;
 else
  afu->pp_psa = 0;

 if (cxl_verbose) {
  read_prop_dword(np, "ibm,supports-aur", &val);
  read_prop_dword(np, "ibm,supports-csrp", &val);
  read_prop_dword(np, "ibm,supports-prr", &val);
 }

 prop = read_prop_dword(np, "ibm,function-error-interrupt", &val);
 if (prop)
  afu->serr_hwirq = val;

 pr_devel("AFU handle: %#llx\n", afu->guest->handle);
 pr_devel("p2n_phys: %#llx (size %#llx)\n",
  afu->guest->p2n_phys, afu->guest->p2n_size);
 pr_devel("psn_phys: %#llx (size %#llx)\n",
  afu->psn_phys, afu->adapter->ps_size);
 pr_devel("Max number of processes virtualised=%i\n",
  afu->max_procs_virtualised);
 pr_devel("Per-process irqs min=%i, max=%i\n", afu->pp_irqs,
   afu->irqs_max);
 pr_devel("Slice error interrupt=%#lx\n", afu->serr_hwirq);

 return 0;
}
