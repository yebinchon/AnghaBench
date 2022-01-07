
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {char* device_name; int s_carrier_report; int s_tx_duty_cycle; int s_tx_carrier; int s_tx_mask; int tx_ir; int s_learning_mode; int map_name; int driver_name; int s_idle; int close; int open; struct ene_device* priv; int allowed_protocols; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int dev; } ;
struct ene_device {int hw_io; int irq; int hw_learning_and_tx_capable; struct rc_dev* rdev; int tx_complete; int tx_sim_timer; struct pnp_dev* pnp_dev; int hw_lock; } ;


 int EBUSY ;
 int ENE_DEFAULT_SAMPLE_PERIOD ;
 int ENE_DRIVER_NAME ;
 scalar_t__ ENE_IO_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int RC_DRIVER_IR_RAW ;
 int RC_MAP_RC6_MCE ;
 int RC_PROTO_BIT_ALL_IR_DECODER ;
 int device_set_wakeup_capable (int *,int) ;
 int device_set_wakeup_enable (int *,int) ;
 int ene_close ;
 int ene_hw_detect (struct ene_device*) ;
 int ene_isr ;
 int ene_open ;
 int ene_rx_setup_hw_buffer (struct ene_device*) ;
 int ene_set_carrier_report ;
 int ene_set_idle ;
 int ene_set_learning_mode ;
 int ene_set_tx_carrier ;
 int ene_set_tx_duty_cycle ;
 int ene_set_tx_mask ;
 int ene_setup_default_settings (struct ene_device*) ;
 int ene_setup_hw_settings (struct ene_device*) ;
 int ene_transmit ;
 int ene_tx_irqsim ;
 int init_completion (int *) ;
 int kfree (struct ene_device*) ;
 struct ene_device* kzalloc (int,int ) ;
 int learning_mode_force ;
 int pnp_irq (struct pnp_dev*,int ) ;
 int pnp_irq_valid (struct pnp_dev*,int ) ;
 scalar_t__ pnp_port_len (struct pnp_dev*,int ) ;
 int pnp_port_start (struct pnp_dev*,int ) ;
 int pnp_port_valid (struct pnp_dev*,int ) ;
 int pnp_set_drvdata (struct pnp_dev*,struct ene_device*) ;
 int pr_notice (char*) ;
 int pr_warn (char*) ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int rc_unregister_device (struct rc_dev*) ;
 int release_region (int,scalar_t__) ;
 scalar_t__ request_irq (int,int ,int ,int ,void*) ;
 int request_region (int,scalar_t__,int ) ;
 int sample_period ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ txsim ;

__attribute__((used)) static int ene_probe(struct pnp_dev *pnp_dev, const struct pnp_device_id *id)
{
 int error = -ENOMEM;
 struct rc_dev *rdev;
 struct ene_device *dev;


 dev = kzalloc(sizeof(struct ene_device), GFP_KERNEL);
 rdev = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!dev || !rdev)
  goto exit_free_dev_rdev;


 error = -ENODEV;


 dev->hw_io = -1;
 dev->irq = -1;

 if (!pnp_port_valid(pnp_dev, 0) ||
     pnp_port_len(pnp_dev, 0) < ENE_IO_SIZE)
  goto exit_free_dev_rdev;

 if (!pnp_irq_valid(pnp_dev, 0))
  goto exit_free_dev_rdev;

 spin_lock_init(&dev->hw_lock);

 dev->hw_io = pnp_port_start(pnp_dev, 0);
 dev->irq = pnp_irq(pnp_dev, 0);


 pnp_set_drvdata(pnp_dev, dev);
 dev->pnp_dev = pnp_dev;


 if (sample_period < 5 || sample_period > 0x7F)
  sample_period = ENE_DEFAULT_SAMPLE_PERIOD;


 error = ene_hw_detect(dev);
 if (error)
  goto exit_free_dev_rdev;

 if (!dev->hw_learning_and_tx_capable && txsim) {
  dev->hw_learning_and_tx_capable = 1;
  timer_setup(&dev->tx_sim_timer, ene_tx_irqsim, 0);
  pr_warn("Simulation of TX activated\n");
 }

 if (!dev->hw_learning_and_tx_capable)
  learning_mode_force = 0;

 rdev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
 rdev->priv = dev;
 rdev->open = ene_open;
 rdev->close = ene_close;
 rdev->s_idle = ene_set_idle;
 rdev->driver_name = ENE_DRIVER_NAME;
 rdev->map_name = RC_MAP_RC6_MCE;
 rdev->device_name = "ENE eHome Infrared Remote Receiver";

 if (dev->hw_learning_and_tx_capable) {
  rdev->s_learning_mode = ene_set_learning_mode;
  init_completion(&dev->tx_complete);
  rdev->tx_ir = ene_transmit;
  rdev->s_tx_mask = ene_set_tx_mask;
  rdev->s_tx_carrier = ene_set_tx_carrier;
  rdev->s_tx_duty_cycle = ene_set_tx_duty_cycle;
  rdev->s_carrier_report = ene_set_carrier_report;
  rdev->device_name = "ENE eHome Infrared Remote Transceiver";
 }

 dev->rdev = rdev;

 ene_rx_setup_hw_buffer(dev);
 ene_setup_default_settings(dev);
 ene_setup_hw_settings(dev);

 device_set_wakeup_capable(&pnp_dev->dev, 1);
 device_set_wakeup_enable(&pnp_dev->dev, 1);

 error = rc_register_device(rdev);
 if (error < 0)
  goto exit_free_dev_rdev;


 error = -EBUSY;
 if (!request_region(dev->hw_io, ENE_IO_SIZE, ENE_DRIVER_NAME)) {
  goto exit_unregister_device;
 }

 if (request_irq(dev->irq, ene_isr,
   IRQF_SHARED, ENE_DRIVER_NAME, (void *)dev)) {
  goto exit_release_hw_io;
 }

 pr_notice("driver has been successfully loaded\n");
 return 0;

exit_release_hw_io:
 release_region(dev->hw_io, ENE_IO_SIZE);
exit_unregister_device:
 rc_unregister_device(rdev);
 rdev = ((void*)0);
exit_free_dev_rdev:
 rc_free_device(rdev);
 kfree(dev);
 return error;
}
