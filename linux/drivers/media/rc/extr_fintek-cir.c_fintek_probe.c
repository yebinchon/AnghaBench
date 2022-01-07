
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int version; int product; int vendor; int bustype; } ;
struct rc_dev {char* input_phys; void* rx_resolution; void* timeout; int map_name; int driver_name; TYPE_2__ dev; TYPE_1__ input_id; int device_name; int close; int open; int allowed_protocols; struct fintek_dev* priv; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int dev; } ;
struct fintek_dev {int cir_port_len; int cir_addr; int cir_irq; struct rc_dev* rdev; int chip_minor; int chip_major; struct pnp_dev* pdev; int fintek_lock; int cr_dp; int cr_ip; } ;


 int BUS_HOST ;
 int CIR_SAMPLE_PERIOD ;
 int CR_DATA_PORT ;
 int CR_INDEX_PORT ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int FINTEK_DESCRIPTION ;
 int FINTEK_DRIVER_NAME ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int KERN_NOTICE ;
 int RC_DRIVER_IR_RAW ;
 int RC_MAP_RC6_MCE ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 void* US_TO_NS (int) ;
 int VENDOR_ID_FINTEK ;
 int cir_dump_regs (struct fintek_dev*) ;
 scalar_t__ debug ;
 int dev_err (int *,char*) ;
 int device_init_wakeup (int *,int) ;
 int fintek_cir_isr ;
 int fintek_cir_ldev_init (struct fintek_dev*) ;
 int fintek_cir_regs_init (struct fintek_dev*) ;
 int fintek_close ;
 int fintek_config_mode_disable (struct fintek_dev*) ;
 int fintek_config_mode_enable (struct fintek_dev*) ;
 int fintek_hw_detect (struct fintek_dev*) ;
 int fintek_open ;
 int fit_pr (int ,char*) ;
 int free_irq (int ,struct fintek_dev*) ;
 int kfree (struct fintek_dev*) ;
 struct fintek_dev* kzalloc (int,int ) ;
 int pnp_irq (struct pnp_dev*,int ) ;
 int pnp_irq_valid (struct pnp_dev*,int ) ;
 int pnp_port_len (struct pnp_dev*,int ) ;
 int pnp_port_start (struct pnp_dev*,int ) ;
 int pnp_port_valid (struct pnp_dev*,int ) ;
 int pnp_set_drvdata (struct pnp_dev*,struct fintek_dev*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int release_region (int ,int ) ;
 scalar_t__ request_irq (int ,int ,int ,int ,void*) ;
 int request_region (int ,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int fintek_probe(struct pnp_dev *pdev, const struct pnp_device_id *dev_id)
{
 struct fintek_dev *fintek;
 struct rc_dev *rdev;
 int ret = -ENOMEM;

 fintek = kzalloc(sizeof(struct fintek_dev), GFP_KERNEL);
 if (!fintek)
  return ret;


 rdev = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!rdev)
  goto exit_free_dev_rdev;

 ret = -ENODEV;

 if (!pnp_port_valid(pdev, 0)) {
  dev_err(&pdev->dev, "IR PNP Port not valid!\n");
  goto exit_free_dev_rdev;
 }

 if (!pnp_irq_valid(pdev, 0)) {
  dev_err(&pdev->dev, "IR PNP IRQ not valid!\n");
  goto exit_free_dev_rdev;
 }

 fintek->cir_addr = pnp_port_start(pdev, 0);
 fintek->cir_irq = pnp_irq(pdev, 0);
 fintek->cir_port_len = pnp_port_len(pdev, 0);

 fintek->cr_ip = CR_INDEX_PORT;
 fintek->cr_dp = CR_DATA_PORT;

 spin_lock_init(&fintek->fintek_lock);

 pnp_set_drvdata(pdev, fintek);
 fintek->pdev = pdev;

 ret = fintek_hw_detect(fintek);
 if (ret)
  goto exit_free_dev_rdev;


 fintek_config_mode_enable(fintek);
 fintek_cir_ldev_init(fintek);
 fintek_config_mode_disable(fintek);


 fintek_cir_regs_init(fintek);


 rdev->priv = fintek;
 rdev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
 rdev->open = fintek_open;
 rdev->close = fintek_close;
 rdev->device_name = FINTEK_DESCRIPTION;
 rdev->input_phys = "fintek/cir0";
 rdev->input_id.bustype = BUS_HOST;
 rdev->input_id.vendor = VENDOR_ID_FINTEK;
 rdev->input_id.product = fintek->chip_major;
 rdev->input_id.version = fintek->chip_minor;
 rdev->dev.parent = &pdev->dev;
 rdev->driver_name = FINTEK_DRIVER_NAME;
 rdev->map_name = RC_MAP_RC6_MCE;
 rdev->timeout = US_TO_NS(1000);

 rdev->rx_resolution = US_TO_NS(CIR_SAMPLE_PERIOD);

 fintek->rdev = rdev;

 ret = -EBUSY;

 if (!request_region(fintek->cir_addr,
       fintek->cir_port_len, FINTEK_DRIVER_NAME))
  goto exit_free_dev_rdev;

 if (request_irq(fintek->cir_irq, fintek_cir_isr, IRQF_SHARED,
   FINTEK_DRIVER_NAME, (void *)fintek))
  goto exit_free_cir_addr;

 ret = rc_register_device(rdev);
 if (ret)
  goto exit_free_irq;

 device_init_wakeup(&pdev->dev, 1);

 fit_pr(KERN_NOTICE, "driver has been successfully loaded\n");
 if (debug)
  cir_dump_regs(fintek);

 return 0;

exit_free_irq:
 free_irq(fintek->cir_irq, fintek);
exit_free_cir_addr:
 release_region(fintek->cir_addr, fintek->cir_port_len);
exit_free_dev_rdev:
 rc_free_device(rdev);
 kfree(fintek);

 return ret;
}
