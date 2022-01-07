
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_6__ {int dvsec_afu_control_pos; } ;
struct ocxl_afu {TYPE_3__ config; TYPE_2__* fn; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int ocxl_config_set_afu_state (struct pci_dev*,int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void deactivate_afu(struct ocxl_afu *afu)
{
 struct pci_dev *dev = to_pci_dev(afu->fn->dev.parent);

 ocxl_config_set_afu_state(dev, afu->config.dvsec_afu_control_pos, 0);
}
