
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct resource {int start; } ;
struct platform_device_id {int driver_data; } ;
struct TYPE_7__ {int kobj; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct ab8500 {int version; int chip_id; int mask_size; int* irq_reg_offset; int* mask; int* oldmask; TYPE_1__* dev; int domain; int irq; void* it_latchhier_num; int transfer_ongoing; int irq_lock; int lock; int write_masked; int write; int read; } ;
typedef enum ab8500_version { ____Placeholder_ab8500_version } ab8500_version ;


 int AB8500_CHARGER ;
 scalar_t__ AB8500_CH_USBCH_STAT1_REG ;
 int AB8500_CUT2P0 ;
 scalar_t__ AB8500_IC_NAME_REG ;
 int AB8500_INTERRUPT ;
 scalar_t__ AB8500_IT_LATCH1_REG ;
 void* AB8500_IT_LATCHHIER_NUM ;
 scalar_t__ AB8500_IT_MASK1_REG ;
 int AB8500_MISC ;
 int AB8500_NUM_IRQ_REGS ;
 int AB8500_POW_KEY_1_ON ;
 scalar_t__ AB8500_REV_REG ;
 int AB8500_RTC ;
 scalar_t__ AB8500_SWITCH_OFF_STATUS ;
 int AB8500_SYS_CTRL1_BLOCK ;
 scalar_t__ AB8500_TURN_ON_STATUS ;
 int AB8500_VBUS_DET ;
 int AB8500_VERSION_UNDEFINED ;
 void* AB8540_IT_LATCHHIER_NUM ;
 int AB8540_NUM_IRQ_REGS ;
 int AB9540_NUM_IRQ_REGS ;
 int ARRAY_SIZE (char const* const*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int VBUS_DET_DBNC1 ;
 int VBUS_DET_DBNC100 ;
 int ab8500_attr_group ;
 char const* const* ab8500_bm_devs ;
 char const* const* ab8500_devs ;
 int ab8500_hierarchical_irq ;
 int ab8500_irq_init (struct ab8500*,struct device_node*) ;
 int* ab8500_irq_regoffset ;
 int ab8500_ops ;
 int ab8500_override_turn_on_stat (int ,int ) ;
 int ab8500_prcmu_read ;
 int ab8500_prcmu_write ;
 int ab8500_prcmu_write_masked ;
 int * ab8500_version_str ;
 int ab8505_attr_group ;
 char const* const* ab8505_devs ;
 char const* const* ab8540_cut1_devs ;
 char const* const* ab8540_cut2_devs ;
 char const* const* ab8540_devs ;
 int* ab8540_irq_regoffset ;
 int ab9540_attr_group ;
 char const* const* ab9540_devs ;
 int* ab9540_irq_regoffset ;
 int abx500_register_ops (TYPE_1__*,int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int,...) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int ,int *,int ,int,char*,struct ab8500*) ;
 int get_register_interruptible (struct ab8500*,int ,scalar_t__,int*) ;
 scalar_t__ is_ab8500_1p1_or_earlier (struct ab8500*) ;
 scalar_t__ is_ab8505 (struct ab8500*) ;
 scalar_t__ is_ab8540 (struct ab8500*) ;
 scalar_t__ is_ab8540_1p2_or_earlier (struct ab8500*) ;
 scalar_t__ is_ab9540 (struct ab8500*) ;
 int mfd_add_devices (TYPE_1__*,int ,char const* const*,int,int *,int ,int ) ;
 int mutex_init (int *) ;
 int no_bm ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ab8500*) ;
 int pr_cont (char*,...) ;
 int set_register_interruptible (struct ab8500*,int ,scalar_t__,int) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int ab8500_probe(struct platform_device *pdev)
{
 static const char * const switch_off_status[] = {
  "Swoff bit programming",
  "Thermal protection activation",
  "Vbat lower then BattOk falling threshold",
  "Watchdog expired",
  "Non presence of 32kHz clock",
  "Battery level lower than power on reset threshold",
  "Power on key 1 pressed longer than 10 seconds",
  "DB8500 thermal shutdown"};
 static const char * const turn_on_status[] = {
  "Battery rising (Vbat)",
  "Power On Key 1 dbF",
  "Power On Key 2 dbF",
  "RTC Alarm",
  "Main Charger Detect",
  "Vbus Detect (USB)",
  "USB ID Detect",
  "UART Factory Mode Detect"};
 const struct platform_device_id *platid = platform_get_device_id(pdev);
 enum ab8500_version version = AB8500_VERSION_UNDEFINED;
 struct device_node *np = pdev->dev.of_node;
 struct ab8500 *ab8500;
 struct resource *resource;
 int ret;
 int i;
 u8 value;

 ab8500 = devm_kzalloc(&pdev->dev, sizeof(*ab8500), GFP_KERNEL);
 if (!ab8500)
  return -ENOMEM;

 ab8500->dev = &pdev->dev;

 resource = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!resource) {
  dev_err(&pdev->dev, "no IRQ resource\n");
  return -ENODEV;
 }

 ab8500->irq = resource->start;

 ab8500->read = ab8500_prcmu_read;
 ab8500->write = ab8500_prcmu_write;
 ab8500->write_masked = ab8500_prcmu_write_masked;

 mutex_init(&ab8500->lock);
 mutex_init(&ab8500->irq_lock);
 atomic_set(&ab8500->transfer_ongoing, 0);

 platform_set_drvdata(pdev, ab8500);

 if (platid)
  version = platid->driver_data;

 if (version != AB8500_VERSION_UNDEFINED)
  ab8500->version = version;
 else {
  ret = get_register_interruptible(ab8500, AB8500_MISC,
   AB8500_IC_NAME_REG, &value);
  if (ret < 0) {
   dev_err(&pdev->dev, "could not probe HW\n");
   return ret;
  }

  ab8500->version = value;
 }

 ret = get_register_interruptible(ab8500, AB8500_MISC,
  AB8500_REV_REG, &value);
 if (ret < 0)
  return ret;

 ab8500->chip_id = value;

 dev_info(ab8500->dev, "detected chip, %s rev. %1x.%1x\n",
   ab8500_version_str[ab8500->version],
   ab8500->chip_id >> 4,
   ab8500->chip_id & 0x0F);


 if (is_ab8540(ab8500)) {
  ab8500->mask_size = AB8540_NUM_IRQ_REGS;
  ab8500->irq_reg_offset = ab8540_irq_regoffset;
  ab8500->it_latchhier_num = AB8540_IT_LATCHHIER_NUM;
 }
 else if (is_ab9540(ab8500) || is_ab8505(ab8500)) {
  ab8500->mask_size = AB9540_NUM_IRQ_REGS;
  ab8500->irq_reg_offset = ab9540_irq_regoffset;
  ab8500->it_latchhier_num = AB8500_IT_LATCHHIER_NUM;
 } else {
  ab8500->mask_size = AB8500_NUM_IRQ_REGS;
  ab8500->irq_reg_offset = ab8500_irq_regoffset;
  ab8500->it_latchhier_num = AB8500_IT_LATCHHIER_NUM;
 }
 ab8500->mask = devm_kzalloc(&pdev->dev, ab8500->mask_size,
        GFP_KERNEL);
 if (!ab8500->mask)
  return -ENOMEM;
 ab8500->oldmask = devm_kzalloc(&pdev->dev, ab8500->mask_size,
           GFP_KERNEL);
 if (!ab8500->oldmask)
  return -ENOMEM;
 ret = get_register_interruptible(ab8500, AB8500_RTC,
  AB8500_SWITCH_OFF_STATUS, &value);
 if (ret < 0)
  return ret;
 dev_info(ab8500->dev, "switch off cause(s) (%#x): ", value);

 if (value) {
  for (i = 0; i < ARRAY_SIZE(switch_off_status); i++) {
   if (value & 1)
    pr_cont(" \"%s\"", switch_off_status[i]);
   value = value >> 1;

  }
  pr_cont("\n");
 } else {
  pr_cont(" None\n");
 }
 ret = get_register_interruptible(ab8500, AB8500_SYS_CTRL1_BLOCK,
  AB8500_TURN_ON_STATUS, &value);
 if (ret < 0)
  return ret;
 dev_info(ab8500->dev, "turn on reason(s) (%#x): ", value);

 if (value) {
  for (i = 0; i < ARRAY_SIZE(turn_on_status); i++) {
   if (value & 1)
    pr_cont("\"%s\" ", turn_on_status[i]);
   value = value >> 1;
  }
  pr_cont("\n");
 } else {
  pr_cont("None\n");
 }

 if (is_ab9540(ab8500)) {
  ret = get_register_interruptible(ab8500, AB8500_CHARGER,
   AB8500_CH_USBCH_STAT1_REG, &value);
  if (ret < 0)
   return ret;
  if ((value & VBUS_DET_DBNC1) && (value & VBUS_DET_DBNC100))
   ab8500_override_turn_on_stat(~AB8500_POW_KEY_1_ON,
           AB8500_VBUS_DET);
 }


 for (i = 0; i < ab8500->mask_size; i++) {




  if (ab8500->irq_reg_offset[i] == 11 &&
    is_ab8500_1p1_or_earlier(ab8500))
   continue;

  if (ab8500->irq_reg_offset[i] < 0)
   continue;

  get_register_interruptible(ab8500, AB8500_INTERRUPT,
   AB8500_IT_LATCH1_REG + ab8500->irq_reg_offset[i],
   &value);
  set_register_interruptible(ab8500, AB8500_INTERRUPT,
   AB8500_IT_MASK1_REG + ab8500->irq_reg_offset[i], 0xff);
 }

 ret = abx500_register_ops(ab8500->dev, &ab8500_ops);
 if (ret)
  return ret;

 for (i = 0; i < ab8500->mask_size; i++)
  ab8500->mask[i] = ab8500->oldmask[i] = 0xff;

 ret = ab8500_irq_init(ab8500, np);
 if (ret)
  return ret;

 ret = devm_request_threaded_irq(&pdev->dev, ab8500->irq, ((void*)0),
   ab8500_hierarchical_irq,
   IRQF_ONESHOT | IRQF_NO_SUSPEND,
   "ab8500", ab8500);
 if (ret)
  return ret;

 if (is_ab9540(ab8500))
  ret = mfd_add_devices(ab8500->dev, 0, ab9540_devs,
    ARRAY_SIZE(ab9540_devs), ((void*)0),
    0, ab8500->domain);
 else if (is_ab8540(ab8500)) {
  ret = mfd_add_devices(ab8500->dev, 0, ab8540_devs,
         ARRAY_SIZE(ab8540_devs), ((void*)0),
         0, ab8500->domain);
  if (ret)
   return ret;

  if (is_ab8540_1p2_or_earlier(ab8500))
   ret = mfd_add_devices(ab8500->dev, 0, ab8540_cut1_devs,
         ARRAY_SIZE(ab8540_cut1_devs), ((void*)0),
         0, ab8500->domain);
  else
   ret = mfd_add_devices(ab8500->dev, 0, ab8540_cut2_devs,
         ARRAY_SIZE(ab8540_cut2_devs), ((void*)0),
         0, ab8500->domain);
 } else if (is_ab8505(ab8500))
  ret = mfd_add_devices(ab8500->dev, 0, ab8505_devs,
         ARRAY_SIZE(ab8505_devs), ((void*)0),
         0, ab8500->domain);
 else
  ret = mfd_add_devices(ab8500->dev, 0, ab8500_devs,
    ARRAY_SIZE(ab8500_devs), ((void*)0),
    0, ab8500->domain);
 if (ret)
  return ret;

 if (!no_bm) {

  ret = mfd_add_devices(ab8500->dev, 0, ab8500_bm_devs,
          ARRAY_SIZE(ab8500_bm_devs), ((void*)0),
          0, ab8500->domain);
  if (ret)
   dev_err(ab8500->dev, "error adding bm devices\n");
 }

 if (((is_ab8505(ab8500) || is_ab9540(ab8500)) &&
   ab8500->chip_id >= AB8500_CUT2P0) || is_ab8540(ab8500))
  ret = sysfs_create_group(&ab8500->dev->kobj,
     &ab9540_attr_group);
 else
  ret = sysfs_create_group(&ab8500->dev->kobj,
     &ab8500_attr_group);

 if ((is_ab8505(ab8500) || is_ab9540(ab8500)) &&
   ab8500->chip_id >= AB8500_CUT2P0)
  ret = sysfs_create_group(&ab8500->dev->kobj,
      &ab8505_attr_group);

 if (ret)
  dev_err(ab8500->dev, "error creating sysfs entries\n");

 return ret;
}
