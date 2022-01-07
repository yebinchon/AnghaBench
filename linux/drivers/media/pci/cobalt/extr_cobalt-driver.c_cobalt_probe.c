
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {int name; int notify; } ;
struct cobalt {int instance; TYPE_1__ v4l2_dev; int * irq_work_queues; struct pci_dev* pci_dev; int hdl_info; int irq_work_queue; } ;


 int COBALT_SYSSTAT_HSMA_PRSNTN_MSK ;
 int COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT ;
 int COBALT_SYS_STAT_BASE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc_return (int *) ;
 int cobalt_err (char*,...) ;
 int cobalt_flash_probe (struct cobalt*) ;
 int cobalt_free_msi (struct cobalt*,struct pci_dev*) ;
 scalar_t__ cobalt_hdl_info_get (struct cobalt*) ;
 int cobalt_i2c_exit (struct cobalt*) ;
 int cobalt_i2c_init (struct cobalt*) ;
 int cobalt_info (char*,...) ;
 int cobalt_instance ;
 int cobalt_irq_work_handler ;
 int cobalt_nodes_register (struct cobalt*) ;
 int cobalt_notify ;
 int cobalt_pci_iounmap (struct cobalt*,struct pci_dev*) ;
 int cobalt_read_bar1 (struct cobalt*,int ) ;
 int cobalt_s_bit_sysctrl (struct cobalt*,int ,int ) ;
 int cobalt_set_interrupt (struct cobalt*,int) ;
 int cobalt_setup_pci (struct cobalt*,struct pci_dev*,struct pci_device_id const*) ;
 int cobalt_stream_struct_init (struct cobalt*) ;
 int cobalt_subdevs_hsma_init (struct cobalt*) ;
 int cobalt_subdevs_init (struct cobalt*) ;
 int core ;
 int * create_singlethread_workqueue (int ) ;
 int destroy_workqueue (int *) ;
 int interrupt_service_routine ;
 int kfree (struct cobalt*) ;
 struct cobalt* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pr_err (char*,int) ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_device_call_all (TYPE_1__*,int ,int ,int ,int ,int *) ;
 int v4l2_device_register (int *,TYPE_1__*) ;
 int v4l2_device_unregister (TYPE_1__*) ;

__attribute__((used)) static int cobalt_probe(struct pci_dev *pci_dev,
      const struct pci_device_id *pci_id)
{
 struct cobalt *cobalt;
 int retval = 0;
 int i;


 i = atomic_inc_return(&cobalt_instance) - 1;

 cobalt = kzalloc(sizeof(struct cobalt), GFP_KERNEL);
 if (cobalt == ((void*)0))
  return -ENOMEM;
 cobalt->pci_dev = pci_dev;
 cobalt->instance = i;

 retval = v4l2_device_register(&pci_dev->dev, &cobalt->v4l2_dev);
 if (retval) {
  pr_err("cobalt: v4l2_device_register of card %d failed\n",
    cobalt->instance);
  kfree(cobalt);
  return retval;
 }
 snprintf(cobalt->v4l2_dev.name, sizeof(cobalt->v4l2_dev.name),
   "cobalt-%d", cobalt->instance);
 cobalt->v4l2_dev.notify = cobalt_notify;
 cobalt_info("Initializing card %d\n", cobalt->instance);

 cobalt->irq_work_queues =
  create_singlethread_workqueue(cobalt->v4l2_dev.name);
 if (cobalt->irq_work_queues == ((void*)0)) {
  cobalt_err("Could not create workqueue\n");
  retval = -ENOMEM;
  goto err;
 }

 INIT_WORK(&cobalt->irq_work_queue, cobalt_irq_work_handler);


 retval = cobalt_setup_pci(cobalt, pci_dev, pci_id);
 if (retval != 0)
  goto err_wq;


 if (cobalt_hdl_info_get(cobalt))
  cobalt_info("Not able to read the HDL info\n");
 else
  cobalt_info("%s", cobalt->hdl_info);

 retval = cobalt_i2c_init(cobalt);
 if (retval)
  goto err_pci;

 cobalt_stream_struct_init(cobalt);

 retval = cobalt_subdevs_init(cobalt);
 if (retval)
  goto err_i2c;

 if (!(cobalt_read_bar1(cobalt, COBALT_SYS_STAT_BASE) &
   COBALT_SYSSTAT_HSMA_PRSNTN_MSK)) {
  retval = cobalt_subdevs_hsma_init(cobalt);
  if (retval)
   goto err_i2c;
 }

 retval = cobalt_nodes_register(cobalt);
 if (retval) {
  cobalt_err("Error %d registering device nodes\n", retval);
  goto err_i2c;
 }
 cobalt_set_interrupt(cobalt, 1);
 v4l2_device_call_all(&cobalt->v4l2_dev, 0, core,
     interrupt_service_routine, 0, ((void*)0));

 cobalt_info("Initialized cobalt card\n");

 cobalt_flash_probe(cobalt);

 return 0;

err_i2c:
 cobalt_i2c_exit(cobalt);
 cobalt_s_bit_sysctrl(cobalt, COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT, 0);
err_pci:
 cobalt_free_msi(cobalt, pci_dev);
 cobalt_pci_iounmap(cobalt, pci_dev);
 pci_release_regions(cobalt->pci_dev);
 pci_disable_device(cobalt->pci_dev);
err_wq:
 destroy_workqueue(cobalt->irq_work_queues);
err:
 cobalt_err("error %d on initialization\n", retval);

 v4l2_device_unregister(&cobalt->v4l2_dev);
 kfree(cobalt);
 return retval;
}
