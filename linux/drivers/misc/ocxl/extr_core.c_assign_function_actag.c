
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {int dvsec_function_pos; } ;
struct ocxl_fn {void* actag_enabled; void* actag_base; TYPE_2__ dev; TYPE_1__ config; void* actag_supported; } ;


 int dev_dbg (TYPE_2__*,char*,void*,void*) ;
 int ocxl_config_get_actag_info (struct pci_dev*,void**,void**,void**) ;
 int ocxl_config_set_actag (struct pci_dev*,int ,void*,void*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int assign_function_actag(struct ocxl_fn *fn)
{
 struct pci_dev *dev = to_pci_dev(fn->dev.parent);
 u16 base, enabled, supported;
 int rc;

 rc = ocxl_config_get_actag_info(dev, &base, &enabled, &supported);
 if (rc)
  return rc;

 fn->actag_base = base;
 fn->actag_enabled = enabled;
 fn->actag_supported = supported;

 ocxl_config_set_actag(dev, fn->config.dvsec_function_pos,
   fn->actag_base, fn->actag_enabled);
 dev_dbg(&fn->dev, "actag range starting at %d, enabled %d\n",
  fn->actag_base, fn->actag_enabled);
 return 0;
}
