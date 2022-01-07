
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_3__ {int parent; } ;
struct ocxl_fn {int actag_enabled; int actag_supported; scalar_t__ actag_base; TYPE_1__ dev; } ;
struct TYPE_4__ {int actag_supported; int dvsec_afu_control_pos; } ;
struct ocxl_afu {int actag_enabled; scalar_t__ actag_base; TYPE_2__ config; struct ocxl_fn* fn; } ;


 int dev_dbg (int *,char*,scalar_t__,int) ;
 int dev_err (int *,char*,int,int) ;
 int ocxl_actag_afu_alloc (struct ocxl_fn*,int) ;
 int ocxl_config_set_afu_actag (struct pci_dev*,int ,scalar_t__,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int assign_afu_actag(struct ocxl_afu *afu)
{
 struct ocxl_fn *fn = afu->fn;
 int actag_count, actag_offset;
 struct pci_dev *pci_dev = to_pci_dev(fn->dev.parent);





 actag_count = afu->config.actag_supported *
  fn->actag_enabled / fn->actag_supported;
 actag_offset = ocxl_actag_afu_alloc(fn, actag_count);
 if (actag_offset < 0) {
  dev_err(&pci_dev->dev, "Can't allocate %d actags for AFU: %d\n",
   actag_count, actag_offset);
  return actag_offset;
 }
 afu->actag_base = fn->actag_base + actag_offset;
 afu->actag_enabled = actag_count;

 ocxl_config_set_afu_actag(pci_dev, afu->config.dvsec_afu_control_pos,
    afu->actag_base, afu->actag_enabled);
 dev_dbg(&pci_dev->dev, "actag base=%d enabled=%d\n",
  afu->actag_base, afu->actag_enabled);
 return 0;
}
