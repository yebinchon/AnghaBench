
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * parent; } ;
struct TYPE_6__ {int version; int product; scalar_t__ vendor; int bustype; } ;
struct rc_dev {int allowed_protocols; struct av7110* priv; int map_name; int change_protocol; TYPE_3__ dev; TYPE_2__ input_id; int input_phys; int driver_name; int device_name; } ;
struct pci_dev {int dev; int device; scalar_t__ vendor; int subsystem_device; scalar_t__ subsystem_vendor; } ;
struct TYPE_8__ {struct rc_dev* rcdev; int ir_config; int input_phys; } ;
struct av7110 {TYPE_4__ ir; int card_name; TYPE_1__* dev; } ;
struct TYPE_5__ {struct pci_dev* pci; } ;


 int BUS_PCI ;
 int ENOMEM ;
 int IR_RC5 ;
 int KBUILD_MODNAME ;
 int RC_DRIVER_SCANCODE ;
 int RC_MAP_HAUPPAUGE ;
 int RC_PROTO_BIT_RC5 ;
 int RC_PROTO_BIT_RCMM32 ;
 int av7110_set_ir_config (struct av7110*) ;
 int change_protocol ;
 char* pci_name (struct pci_dev*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int snprintf (int ,int,char*,char*) ;

int av7110_ir_init(struct av7110 *av7110)
{
 struct rc_dev *rcdev;
 struct pci_dev *pci;
 int ret;

 rcdev = rc_allocate_device(RC_DRIVER_SCANCODE);
 if (!rcdev)
  return -ENOMEM;

 pci = av7110->dev->pci;

 snprintf(av7110->ir.input_phys, sizeof(av7110->ir.input_phys),
   "pci-%s/ir0", pci_name(pci));

 rcdev->device_name = av7110->card_name;
 rcdev->driver_name = KBUILD_MODNAME;
 rcdev->input_phys = av7110->ir.input_phys;
 rcdev->input_id.bustype = BUS_PCI;
 rcdev->input_id.version = 2;
 if (pci->subsystem_vendor) {
  rcdev->input_id.vendor = pci->subsystem_vendor;
  rcdev->input_id.product = pci->subsystem_device;
 } else {
  rcdev->input_id.vendor = pci->vendor;
  rcdev->input_id.product = pci->device;
 }

 rcdev->dev.parent = &pci->dev;
 rcdev->allowed_protocols = RC_PROTO_BIT_RC5 | RC_PROTO_BIT_RCMM32;
 rcdev->change_protocol = change_protocol;
 rcdev->map_name = RC_MAP_HAUPPAUGE;
 rcdev->priv = av7110;

 av7110->ir.rcdev = rcdev;
 av7110->ir.ir_config = IR_RC5;
 av7110_set_ir_config(av7110);

 ret = rc_register_device(rcdev);
 if (ret) {
  av7110->ir.rcdev = ((void*)0);
  rc_free_device(rcdev);
 }

 return ret;
}
