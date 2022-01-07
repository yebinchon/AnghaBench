
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_5__ {int version; int product; scalar_t__ vendor; int bustype; } ;
struct rc_dev {char* map_name; int driver_name; int close; int open; struct cx23885_kernel_ir* priv; int allowed_protocols; TYPE_2__ dev; TYPE_1__ input_id; struct cx23885_kernel_ir* input_phys; struct cx23885_kernel_ir* device_name; } ;
struct cx23885_kernel_ir {struct cx23885_kernel_ir* name; struct cx23885_kernel_ir* phys; struct rc_dev* rc; struct cx23885_dev* cx; } ;
struct cx23885_dev {int board; struct cx23885_kernel_ir* kernel_ir; TYPE_3__* pci; int * sd_ir; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int dev; int device; scalar_t__ vendor; int subsystem_device; scalar_t__ subsystem_vendor; } ;


 int BUS_PCI ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MODULE_NAME ;
 int RC_DRIVER_IR_RAW ;
 char* RC_MAP_DVBSKY ;
 char* RC_MAP_HAUPPAUGE ;
 char* RC_MAP_NEC_TERRATEC_CINERGY_XS ;
 char* RC_MAP_TBS_NEC ;
 char* RC_MAP_TEVII_NEC ;
 char* RC_MAP_TOTAL_MEDIA_IN_HAND_02 ;
 char* RC_MAP_TT_1500 ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 TYPE_4__* cx23885_boards ;
 int cx23885_input_ir_close ;
 int cx23885_input_ir_open ;
 int cx23885_input_ir_stop (struct cx23885_dev*) ;
 void* kasprintf (int ,char*,int ) ;
 int kfree (struct cx23885_kernel_ir*) ;
 struct cx23885_kernel_ir* kzalloc (int,int ) ;
 int pci_name (TYPE_3__*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;

int cx23885_input_init(struct cx23885_dev *dev)
{
 struct cx23885_kernel_ir *kernel_ir;
 struct rc_dev *rc;
 char *rc_map;
 u64 allowed_protos;

 int ret;





 if (dev->sd_ir == ((void*)0))
  return -ENODEV;

 switch (dev->board) {
 case 136:
 case 134:
 case 135:
 case 138:
 case 137:

  allowed_protos = RC_PROTO_BIT_ALL_IR_DECODER;

  rc_map = RC_MAP_HAUPPAUGE;
  break;
 case 130:

  allowed_protos = RC_PROTO_BIT_ALL_IR_DECODER;

  rc_map = RC_MAP_NEC_TERRATEC_CINERGY_XS;
  break;
 case 129:

  allowed_protos = RC_PROTO_BIT_ALL_IR_DECODER;

  rc_map = RC_MAP_TEVII_NEC;
  break;
 case 133:

  allowed_protos = RC_PROTO_BIT_ALL_IR_DECODER;

  rc_map = RC_MAP_TOTAL_MEDIA_IN_HAND_02;
  break;
 case 132:
 case 131:

  allowed_protos = RC_PROTO_BIT_ALL_IR_DECODER;

  rc_map = RC_MAP_TBS_NEC;
  break;
 case 141:
 case 140:
 case 143:
 case 144:
 case 142:
 case 139:

  allowed_protos = RC_PROTO_BIT_ALL_IR_DECODER;
  rc_map = RC_MAP_DVBSKY;
  break;
 case 128:

  allowed_protos = RC_PROTO_BIT_ALL_IR_DECODER;
  rc_map = RC_MAP_TT_1500;
  break;
 default:
  return -ENODEV;
 }


 kernel_ir = kzalloc(sizeof(struct cx23885_kernel_ir), GFP_KERNEL);
 if (kernel_ir == ((void*)0))
  return -ENOMEM;

 kernel_ir->cx = dev;
 kernel_ir->name = kasprintf(GFP_KERNEL, "cx23885 IR (%s)",
        cx23885_boards[dev->board].name);
 if (!kernel_ir->name) {
  ret = -ENOMEM;
  goto err_out_free;
 }

 kernel_ir->phys = kasprintf(GFP_KERNEL, "pci-%s/ir0",
        pci_name(dev->pci));
 if (!kernel_ir->phys) {
  ret = -ENOMEM;
  goto err_out_free_name;
 }


 rc = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!rc) {
  ret = -ENOMEM;
  goto err_out_free_phys;
 }

 kernel_ir->rc = rc;
 rc->device_name = kernel_ir->name;
 rc->input_phys = kernel_ir->phys;
 rc->input_id.bustype = BUS_PCI;
 rc->input_id.version = 1;
 if (dev->pci->subsystem_vendor) {
  rc->input_id.vendor = dev->pci->subsystem_vendor;
  rc->input_id.product = dev->pci->subsystem_device;
 } else {
  rc->input_id.vendor = dev->pci->vendor;
  rc->input_id.product = dev->pci->device;
 }
 rc->dev.parent = &dev->pci->dev;
 rc->allowed_protocols = allowed_protos;
 rc->priv = kernel_ir;
 rc->open = cx23885_input_ir_open;
 rc->close = cx23885_input_ir_close;
 rc->map_name = rc_map;
 rc->driver_name = MODULE_NAME;


 dev->kernel_ir = kernel_ir;
 ret = rc_register_device(rc);
 if (ret)
  goto err_out_stop;

 return 0;

err_out_stop:
 cx23885_input_ir_stop(dev);
 dev->kernel_ir = ((void*)0);
 rc_free_device(rc);
err_out_free_phys:
 kfree(kernel_ir->phys);
err_out_free_name:
 kfree(kernel_ir->name);
err_out_free:
 kfree(kernel_ir);
 return ret;
}
