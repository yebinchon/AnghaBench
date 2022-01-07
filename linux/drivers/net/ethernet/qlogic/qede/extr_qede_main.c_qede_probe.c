
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_device_id {int driver_data; } ;
struct pci_dev {int dev; } ;
typedef enum qede_pci_private { ____Placeholder_qede_pci_private } qede_pci_private ;



 int QEDE_PROBE_NORMAL ;
 int QED_LOG_VERBOSE_MASK ;
 int __qede_probe (struct pci_dev*,int ,int ,int,int ) ;
 int debug ;
 int dev_err (int *,char*) ;
 int qede_config_debug (int,int *,int *) ;

__attribute__((used)) static int qede_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 bool is_vf = 0;
 u32 dp_module = 0;
 u8 dp_level = 0;

 switch ((enum qede_pci_private)id->driver_data) {
 case 128:
  if (debug & QED_LOG_VERBOSE_MASK)
   dev_err(&pdev->dev, "Probing a VF\n");
  is_vf = 1;
  break;
 default:
  if (debug & QED_LOG_VERBOSE_MASK)
   dev_err(&pdev->dev, "Probing a PF\n");
 }

 qede_config_debug(debug, &dp_module, &dp_level);

 return __qede_probe(pdev, dp_module, dp_level, is_vf,
       QEDE_PROBE_NORMAL);
}
