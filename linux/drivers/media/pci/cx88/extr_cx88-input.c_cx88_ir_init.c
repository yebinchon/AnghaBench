
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_5__ {int version; int product; scalar_t__ vendor; int bustype; } ;
struct rc_dev {char* map_name; int timeout; int allowed_protocols; int driver_type; void* scancode_mask; int close; int open; struct cx88_core* priv; int driver_name; TYPE_3__ dev; TYPE_2__ input_id; int input_phys; int device_name; } ;
struct pci_dev {int dev; int device; scalar_t__ vendor; int subsystem_device; scalar_t__ subsystem_vendor; } ;
struct TYPE_4__ {char* name; } ;
struct cx88_core {int boardnr; struct cx88_IR* ir; TYPE_1__ board; } ;
struct cx88_IR {int mask_keycode; int mask_keyup; int polling; int sampling; int mask_keydown; struct cx88_core* core; int phys; int name; void* gpio_addr; struct rc_dev* dev; } ;


 int BUS_PCI ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MODULE_NAME ;
 void* MO_GP0_IO ;
 void* MO_GP1_IO ;
 void* MO_GP2_IO ;
 int RC_DRIVER_IR_RAW ;
 int RC_DRIVER_SCANCODE ;
 char* RC_MAP_ADSTECH_DVB_T_PCI ;
 char* RC_MAP_AVERTV_303 ;
 char* RC_MAP_CINERGY_1400 ;
 char* RC_MAP_DNTV_LIVE_DVBT_PRO ;
 char* RC_MAP_DNTV_LIVE_DVB_T ;
 char* RC_MAP_HAUPPAUGE ;
 char* RC_MAP_IODATA_BCTV7E ;
 char* RC_MAP_MSI_TVANYWHERE ;
 char* RC_MAP_NORWOOD ;
 char* RC_MAP_NPGTECH ;
 char* RC_MAP_PINNACLE_PCTV_HD ;
 char* RC_MAP_PIXELVIEW ;
 char* RC_MAP_PIXELVIEW_MK12 ;
 char* RC_MAP_PIXELVIEW_NEW ;
 char* RC_MAP_POWERCOLOR_REAL_ANGEL ;
 char* RC_MAP_TBS_NEC ;
 char* RC_MAP_TEVII_NEC ;
 char* RC_MAP_TWINHAN_VP1027_DVBS ;
 char* RC_MAP_WINFAST ;
 int RC_PROTO_BIT_NECX ;
 int RC_PROTO_BIT_OTHER ;
 int cx88_ir_close ;
 int cx88_ir_open ;
 int kfree (struct cx88_IR*) ;
 struct cx88_IR* kzalloc (int,int ) ;
 char* pci_name (struct pci_dev*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int snprintf (int ,int,char*,char*) ;

int cx88_ir_init(struct cx88_core *core, struct pci_dev *pci)
{
 struct cx88_IR *ir;
 struct rc_dev *dev;
 char *ir_codes = ((void*)0);
 u64 rc_proto = RC_PROTO_BIT_OTHER;
 int err = -ENOMEM;
 u32 hardware_mask = 0;



 ir = kzalloc(sizeof(*ir), GFP_KERNEL);
 dev = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!ir || !dev)
  goto err_out_free;

 ir->dev = dev;


 switch (core->boardnr) {
 case 175:
 case 163:
 case 162:
  ir_codes = RC_MAP_DNTV_LIVE_DVB_T;
  ir->gpio_addr = MO_GP1_IO;
  ir->mask_keycode = 0x1f;
  ir->mask_keyup = 0x60;
  ir->polling = 50;
  break;
 case 142:
  ir_codes = RC_MAP_CINERGY_1400;
  ir->sampling = 0xeb04;
  break;
 case 173:
 case 172:
 case 166:
 case 165:
 case 171:
 case 170:
 case 169:
 case 168:
 case 156:
 case 155:
 case 167:
  ir_codes = RC_MAP_HAUPPAUGE;
  ir->sampling = 1;
  break;
 case 133:
 case 132:
 case 135:
 case 134:
 case 131:
  ir_codes = RC_MAP_WINFAST;
  ir->gpio_addr = MO_GP0_IO;
  ir->mask_keycode = 0x8f8;
  ir->mask_keyup = 0x100;
  ir->polling = 50;
  break;
 case 137:
 case 136:
 case 130:
 case 129:
 case 128:
  ir_codes = RC_MAP_WINFAST;
  ir->gpio_addr = MO_GP0_IO;
  ir->mask_keycode = 0x8f8;
  ir->mask_keyup = 0x100;
  ir->polling = 1;
  break;
 case 164:
  ir_codes = RC_MAP_IODATA_BCTV7E;
  ir->gpio_addr = MO_GP0_IO;
  ir->mask_keycode = 0xfd;
  ir->mask_keydown = 0x02;
  ir->polling = 5;
  break;
 case 148:
 case 153:







  ir_codes = RC_MAP_PIXELVIEW_MK12;
  rc_proto = RC_PROTO_BIT_NECX;
  ir->gpio_addr = MO_GP1_IO;
  ir->mask_keyup = 0x80;
  ir->polling = 10;
  hardware_mask = 0x3f;
  break;
 case 147:
 case 146:
  ir_codes = RC_MAP_PIXELVIEW_NEW;
  ir->gpio_addr = MO_GP1_IO;
  ir->mask_keycode = 0x3f;
  ir->mask_keyup = 0x80;
  ir->polling = 1;
  break;
 case 161:
  ir_codes = RC_MAP_PIXELVIEW;
  ir->gpio_addr = MO_GP1_IO;
  ir->mask_keycode = 0x1f;
  ir->mask_keyup = 0x60;
  ir->polling = 1;
  break;
 case 178:
  ir_codes = RC_MAP_ADSTECH_DVB_T_PCI;
  ir->gpio_addr = MO_GP1_IO;
  ir->mask_keycode = 0xbf;
  ir->mask_keyup = 0x40;
  ir->polling = 50;
  break;
 case 160:
  ir_codes = RC_MAP_MSI_TVANYWHERE;
  ir->gpio_addr = MO_GP1_IO;
  ir->mask_keycode = 0x1f;
  ir->mask_keyup = 0x40;
  ir->polling = 1;
  break;
 case 177:
 case 176:
  ir_codes = RC_MAP_AVERTV_303;
  ir->gpio_addr = MO_GP2_IO;
  ir->mask_keycode = 0xfb;
  ir->mask_keydown = 0x02;
  ir->polling = 50;
  break;
 case 157:
 case 145:
 case 143:
 case 144:
 case 150:
 case 149:
 case 151:
  ir_codes = RC_MAP_TBS_NEC;
  ir->sampling = 0xff00;
  break;
 case 139:
 case 140:
 case 141:
  ir_codes = RC_MAP_TEVII_NEC;
  ir->sampling = 0xff00;
  break;
 case 174:
  ir_codes = RC_MAP_DNTV_LIVE_DVBT_PRO;
  ir->sampling = 0xff00;
  break;
 case 159:
  ir_codes = RC_MAP_NORWOOD;
  ir->gpio_addr = MO_GP1_IO;
  ir->mask_keycode = 0x0e;
  ir->mask_keyup = 0x80;
  ir->polling = 50;
  break;
 case 158:
  ir_codes = RC_MAP_NPGTECH;
  ir->gpio_addr = MO_GP0_IO;
  ir->mask_keycode = 0xfa;
  ir->polling = 50;
  break;
 case 154:
  ir_codes = RC_MAP_PINNACLE_PCTV_HD;
  ir->sampling = 1;
  break;
 case 152:
  ir_codes = RC_MAP_POWERCOLOR_REAL_ANGEL;
  ir->gpio_addr = MO_GP2_IO;
  ir->mask_keycode = 0x7e;
  ir->polling = 100;
  break;
 case 138:
  ir_codes = RC_MAP_TWINHAN_VP1027_DVBS;
  ir->sampling = 0xff00;
  break;
 }

 if (!ir_codes) {
  err = -ENODEV;
  goto err_out_free;
 }
 if (hardware_mask && !ir->mask_keycode)
  ir->mask_keycode = hardware_mask;


 snprintf(ir->name, sizeof(ir->name), "cx88 IR (%s)", core->board.name);
 snprintf(ir->phys, sizeof(ir->phys), "pci-%s/ir0", pci_name(pci));

 dev->device_name = ir->name;
 dev->input_phys = ir->phys;
 dev->input_id.bustype = BUS_PCI;
 dev->input_id.version = 1;
 if (pci->subsystem_vendor) {
  dev->input_id.vendor = pci->subsystem_vendor;
  dev->input_id.product = pci->subsystem_device;
 } else {
  dev->input_id.vendor = pci->vendor;
  dev->input_id.product = pci->device;
 }
 dev->dev.parent = &pci->dev;
 dev->map_name = ir_codes;
 dev->driver_name = MODULE_NAME;
 dev->priv = core;
 dev->open = cx88_ir_open;
 dev->close = cx88_ir_close;
 dev->scancode_mask = hardware_mask;

 if (ir->sampling) {
  dev->timeout = 10 * 1000 * 1000;
 } else {
  dev->driver_type = RC_DRIVER_SCANCODE;
  dev->allowed_protocols = rc_proto;
 }

 ir->core = core;
 core->ir = ir;


 err = rc_register_device(dev);
 if (err)
  goto err_out_free;

 return 0;

err_out_free:
 rc_free_device(dev);
 core->ir = ((void*)0);
 kfree(ir);
 return err;
}
