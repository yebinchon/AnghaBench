
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * parent; } ;
struct TYPE_5__ {int version; int product; scalar_t__ vendor; int bustype; } ;
struct rc_dev {char* device_name; TYPE_2__ dev; TYPE_1__ input_id; int input_phys; int map_name; int driver_name; } ;
struct TYPE_7__ {struct rc_dev* dev; int work; int input_phys; } ;
struct dm1105_dev {TYPE_3__ ir; TYPE_4__* pdev; } ;
struct TYPE_8__ {int dev; int device; scalar_t__ vendor; int subsystem_device; scalar_t__ subsystem_vendor; } ;


 int BUS_PCI ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int MODULE_NAME ;
 int RC_DRIVER_SCANCODE ;
 int RC_MAP_DM1105_NEC ;
 int dm1105_emit_key ;
 char* pci_name (TYPE_4__*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int dm1105_ir_init(struct dm1105_dev *dm1105)
{
 struct rc_dev *dev;
 int err = -ENOMEM;

 dev = rc_allocate_device(RC_DRIVER_SCANCODE);
 if (!dev)
  return -ENOMEM;

 snprintf(dm1105->ir.input_phys, sizeof(dm1105->ir.input_phys),
  "pci-%s/ir0", pci_name(dm1105->pdev));

 dev->driver_name = MODULE_NAME;
 dev->map_name = RC_MAP_DM1105_NEC;
 dev->device_name = "DVB on-card IR receiver";
 dev->input_phys = dm1105->ir.input_phys;
 dev->input_id.bustype = BUS_PCI;
 dev->input_id.version = 1;
 if (dm1105->pdev->subsystem_vendor) {
  dev->input_id.vendor = dm1105->pdev->subsystem_vendor;
  dev->input_id.product = dm1105->pdev->subsystem_device;
 } else {
  dev->input_id.vendor = dm1105->pdev->vendor;
  dev->input_id.product = dm1105->pdev->device;
 }
 dev->dev.parent = &dm1105->pdev->dev;

 INIT_WORK(&dm1105->ir.work, dm1105_emit_key);

 err = rc_register_device(dev);
 if (err < 0) {
  rc_free_device(dev);
  return err;
 }

 dm1105->ir.dev = dev;
 return 0;
}
