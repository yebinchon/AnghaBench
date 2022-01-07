
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * parent; } ;
struct TYPE_6__ {int version; int product; int vendor; int bustype; } ;
struct rc_dev {TYPE_3__ dev; int map_name; int driver_name; TYPE_2__ input_id; int input_phys; int device_name; } ;
struct mantis_pci {struct rc_dev* rc; TYPE_4__* pdev; scalar_t__ rc_map_name; int device_id; int vendor_id; int input_phys; int device_name; TYPE_1__* hwconfig; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_5__ {char* model_name; } ;


 int BUS_PCI ;
 int ENOMEM ;
 int MANTIS_ERROR ;
 int MODULE_NAME ;
 int RC_DRIVER_SCANCODE ;
 int RC_MAP_EMPTY ;
 int dprintk (int ,int,char*,...) ;
 char* pci_name (TYPE_4__*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int snprintf (int ,int,char*,char*) ;

int mantis_input_init(struct mantis_pci *mantis)
{
 struct rc_dev *dev;
 int err;

 dev = rc_allocate_device(RC_DRIVER_SCANCODE);
 if (!dev) {
  dprintk(MANTIS_ERROR, 1, "Remote device allocation failed");
  err = -ENOMEM;
  goto out;
 }

 snprintf(mantis->device_name, sizeof(mantis->device_name),
   "Mantis %s IR receiver", mantis->hwconfig->model_name);
 snprintf(mantis->input_phys, sizeof(mantis->input_phys),
   "pci-%s/ir0", pci_name(mantis->pdev));

 dev->device_name = mantis->device_name;
 dev->input_phys = mantis->input_phys;
 dev->input_id.bustype = BUS_PCI;
 dev->input_id.vendor = mantis->vendor_id;
 dev->input_id.product = mantis->device_id;
 dev->input_id.version = 1;
 dev->driver_name = MODULE_NAME;
 dev->map_name = mantis->rc_map_name ? : RC_MAP_EMPTY;
 dev->dev.parent = &mantis->pdev->dev;

 err = rc_register_device(dev);
 if (err) {
  dprintk(MANTIS_ERROR, 1, "IR device registration failed, ret = %d", err);
  goto out_dev;
 }

 mantis->rc = dev;
 return 0;

out_dev:
 rc_free_device(dev);
out:
 return err;
}
