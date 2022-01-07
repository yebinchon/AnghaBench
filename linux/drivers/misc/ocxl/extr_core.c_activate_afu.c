
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int dvsec_afu_control_pos; } ;
struct ocxl_afu {TYPE_1__ config; } ;


 int ocxl_config_set_afu_state (struct pci_dev*,int ,int) ;

__attribute__((used)) static int activate_afu(struct pci_dev *dev, struct ocxl_afu *afu)
{
 ocxl_config_set_afu_state(dev, afu->config.dvsec_afu_control_pos, 1);

 return 0;
}
