
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {char* name; char* default_trigger; int brightness_get; int brightness_set; } ;
struct wbcir_data {scalar_t__ ebase; scalar_t__ wbase; scalar_t__ sbase; int irq; TYPE_8__ led; TYPE_4__* dev; int spinlock; } ;
struct pnp_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pnp_dev {struct device dev; } ;
struct TYPE_10__ {int data; int mask; } ;
struct TYPE_12__ {struct device* parent; } ;
struct TYPE_11__ {int version; int product; int vendor; int bustype; } ;
struct TYPE_13__ {char* input_phys; int min_timeout; int timeout; int max_timeout; int allowed_wakeup_protocols; int s_wakeup_filter; TYPE_1__ scancode_wakeup_filter; int wakeup_protocol; int allowed_protocols; int rx_resolution; TYPE_3__ dev; struct wbcir_data* priv; int tx_ir; int s_tx_carrier; int s_tx_mask; int s_carrier_report; int s_idle; int map_name; TYPE_2__ input_id; int device_name; int driver_name; } ;


 int BUS_HOST ;
 int DRVNAME ;
 int EBUSY ;
 scalar_t__ EHFUNC_IOMEM_LEN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IR_DEFAULT_TIMEOUT ;
 int PCI_VENDOR_ID_WINBOND ;
 int RC_DRIVER_IR_RAW ;
 int RC_MAP_RC6_MCE ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 int RC_PROTO_BIT_NEC ;
 int RC_PROTO_BIT_NEC32 ;
 int RC_PROTO_BIT_NECX ;
 int RC_PROTO_BIT_RC5 ;
 int RC_PROTO_BIT_RC6_0 ;
 int RC_PROTO_BIT_RC6_6A_20 ;
 int RC_PROTO_BIT_RC6_6A_24 ;
 int RC_PROTO_BIT_RC6_6A_32 ;
 int RC_PROTO_BIT_RC6_MCE ;
 int RC_PROTO_RC6_MCE ;
 scalar_t__ SP_IOMEM_LEN ;
 int US_TO_NS (int) ;
 scalar_t__ WAKEUP_IOMEM_LEN ;
 int WBCIR_ID_CHIP ;
 int WBCIR_ID_FAMILY ;
 int WBCIR_NAME ;
 int dev_dbg (struct device*,char*,scalar_t__,scalar_t__,scalar_t__,int) ;
 int dev_err (struct device*,char*,...) ;
 int device_init_wakeup (struct device*,int) ;
 int kfree (struct wbcir_data*) ;
 struct wbcir_data* kzalloc (int,int ) ;
 int led_classdev_register (struct device*,TYPE_8__*) ;
 int led_classdev_unregister (TYPE_8__*) ;
 int pnp_irq (struct pnp_dev*,int ) ;
 scalar_t__ pnp_port_len (struct pnp_dev*,int) ;
 void* pnp_port_start (struct pnp_dev*,int) ;
 int pnp_set_drvdata (struct pnp_dev*,struct wbcir_data*) ;
 TYPE_4__* rc_allocate_device (int ) ;
 int rc_free_device (TYPE_4__*) ;
 int rc_register_device (TYPE_4__*) ;
 int rc_unregister_device (TYPE_4__*) ;
 int release_region (scalar_t__,scalar_t__) ;
 int request_irq (int,int ,int ,int ,struct pnp_dev*) ;
 int request_region (scalar_t__,scalar_t__,int ) ;
 int spin_lock_init (int *) ;
 int wbcir_idle_rx ;
 int wbcir_init_hw (struct wbcir_data*) ;
 int wbcir_irq_handler ;
 int wbcir_led_brightness_get ;
 int wbcir_led_brightness_set ;
 int wbcir_set_carrier_report ;
 int wbcir_set_wakeup_filter ;
 int wbcir_tx ;
 int wbcir_txcarrier ;
 int wbcir_txmask ;

__attribute__((used)) static int
wbcir_probe(struct pnp_dev *device, const struct pnp_device_id *dev_id)
{
 struct device *dev = &device->dev;
 struct wbcir_data *data;
 int err;

 if (!(pnp_port_len(device, 0) == EHFUNC_IOMEM_LEN &&
       pnp_port_len(device, 1) == WAKEUP_IOMEM_LEN &&
       pnp_port_len(device, 2) == SP_IOMEM_LEN)) {
  dev_err(dev, "Invalid resources\n");
  return -ENODEV;
 }

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data) {
  err = -ENOMEM;
  goto exit;
 }

 pnp_set_drvdata(device, data);

 spin_lock_init(&data->spinlock);
 data->ebase = pnp_port_start(device, 0);
 data->wbase = pnp_port_start(device, 1);
 data->sbase = pnp_port_start(device, 2);
 data->irq = pnp_irq(device, 0);

 if (data->wbase == 0 || data->ebase == 0 ||
     data->sbase == 0 || data->irq == -1) {
  err = -ENODEV;
  dev_err(dev, "Invalid resources\n");
  goto exit_free_data;
 }

 dev_dbg(&device->dev, "Found device (w: 0x%lX, e: 0x%lX, s: 0x%lX, i: %u)\n",
  data->wbase, data->ebase, data->sbase, data->irq);

 data->led.name = "cir::activity";
 data->led.default_trigger = "rc-feedback";
 data->led.brightness_set = wbcir_led_brightness_set;
 data->led.brightness_get = wbcir_led_brightness_get;
 err = led_classdev_register(&device->dev, &data->led);
 if (err)
  goto exit_free_data;

 data->dev = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!data->dev) {
  err = -ENOMEM;
  goto exit_unregister_led;
 }

 data->dev->driver_name = DRVNAME;
 data->dev->device_name = WBCIR_NAME;
 data->dev->input_phys = "wbcir/cir0";
 data->dev->input_id.bustype = BUS_HOST;
 data->dev->input_id.vendor = PCI_VENDOR_ID_WINBOND;
 data->dev->input_id.product = WBCIR_ID_FAMILY;
 data->dev->input_id.version = WBCIR_ID_CHIP;
 data->dev->map_name = RC_MAP_RC6_MCE;
 data->dev->s_idle = wbcir_idle_rx;
 data->dev->s_carrier_report = wbcir_set_carrier_report;
 data->dev->s_tx_mask = wbcir_txmask;
 data->dev->s_tx_carrier = wbcir_txcarrier;
 data->dev->tx_ir = wbcir_tx;
 data->dev->priv = data;
 data->dev->dev.parent = &device->dev;
 data->dev->min_timeout = 1;
 data->dev->timeout = IR_DEFAULT_TIMEOUT;
 data->dev->max_timeout = 10 * IR_DEFAULT_TIMEOUT;
 data->dev->rx_resolution = US_TO_NS(2);
 data->dev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
 data->dev->allowed_wakeup_protocols = RC_PROTO_BIT_NEC |
  RC_PROTO_BIT_NECX | RC_PROTO_BIT_NEC32 | RC_PROTO_BIT_RC5 |
  RC_PROTO_BIT_RC6_0 | RC_PROTO_BIT_RC6_6A_20 |
  RC_PROTO_BIT_RC6_6A_24 | RC_PROTO_BIT_RC6_6A_32 |
  RC_PROTO_BIT_RC6_MCE;
 data->dev->wakeup_protocol = RC_PROTO_RC6_MCE;
 data->dev->scancode_wakeup_filter.data = 0x800f040c;
 data->dev->scancode_wakeup_filter.mask = 0xffff7fff;
 data->dev->s_wakeup_filter = wbcir_set_wakeup_filter;

 err = rc_register_device(data->dev);
 if (err)
  goto exit_free_rc;

 if (!request_region(data->wbase, WAKEUP_IOMEM_LEN, DRVNAME)) {
  dev_err(dev, "Region 0x%lx-0x%lx already in use!\n",
   data->wbase, data->wbase + WAKEUP_IOMEM_LEN - 1);
  err = -EBUSY;
  goto exit_unregister_device;
 }

 if (!request_region(data->ebase, EHFUNC_IOMEM_LEN, DRVNAME)) {
  dev_err(dev, "Region 0x%lx-0x%lx already in use!\n",
   data->ebase, data->ebase + EHFUNC_IOMEM_LEN - 1);
  err = -EBUSY;
  goto exit_release_wbase;
 }

 if (!request_region(data->sbase, SP_IOMEM_LEN, DRVNAME)) {
  dev_err(dev, "Region 0x%lx-0x%lx already in use!\n",
   data->sbase, data->sbase + SP_IOMEM_LEN - 1);
  err = -EBUSY;
  goto exit_release_ebase;
 }

 err = request_irq(data->irq, wbcir_irq_handler,
     0, DRVNAME, device);
 if (err) {
  dev_err(dev, "Failed to claim IRQ %u\n", data->irq);
  err = -EBUSY;
  goto exit_release_sbase;
 }

 device_init_wakeup(&device->dev, 1);

 wbcir_init_hw(data);

 return 0;

exit_release_sbase:
 release_region(data->sbase, SP_IOMEM_LEN);
exit_release_ebase:
 release_region(data->ebase, EHFUNC_IOMEM_LEN);
exit_release_wbase:
 release_region(data->wbase, WAKEUP_IOMEM_LEN);
exit_unregister_device:
 rc_unregister_device(data->dev);
 data->dev = ((void*)0);
exit_free_rc:
 rc_free_device(data->dev);
exit_unregister_led:
 led_classdev_unregister(&data->led);
exit_free_data:
 kfree(data);
 pnp_set_drvdata(device, ((void*)0));
exit:
 return err;
}
