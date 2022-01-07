
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cobalt {int irq_work_queues; int pci_dev; TYPE_1__* streams; } ;
struct TYPE_2__ {struct v4l2_subdev* sd; } ;


 int COBALT_NUM_ADAPTERS ;
 int COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT ;
 int cobalt_flash_remove (struct cobalt*) ;
 int cobalt_free_msi (struct cobalt*,struct pci_dev*) ;
 int cobalt_i2c_exit (struct cobalt*) ;
 int cobalt_info (char*) ;
 int cobalt_nodes_unregister (struct cobalt*) ;
 int cobalt_pci_iounmap (struct cobalt*,struct pci_dev*) ;
 int cobalt_s_bit_sysctrl (struct cobalt*,int ,int ) ;
 int cobalt_set_interrupt (struct cobalt*,int) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int kfree (struct cobalt*) ;
 int pci_disable_device (int ) ;
 struct v4l2_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (int ) ;
 struct cobalt* to_cobalt (struct v4l2_device*) ;
 int v4l2_device_unregister (struct v4l2_device*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static void cobalt_remove(struct pci_dev *pci_dev)
{
 struct v4l2_device *v4l2_dev = pci_get_drvdata(pci_dev);
 struct cobalt *cobalt = to_cobalt(v4l2_dev);
 int i;

 cobalt_flash_remove(cobalt);
 cobalt_set_interrupt(cobalt, 0);
 flush_workqueue(cobalt->irq_work_queues);
 cobalt_nodes_unregister(cobalt);
 for (i = 0; i < COBALT_NUM_ADAPTERS; i++) {
  struct v4l2_subdev *sd = cobalt->streams[i].sd;
  struct i2c_client *client;

  if (sd == ((void*)0))
   continue;
  client = v4l2_get_subdevdata(sd);
  v4l2_device_unregister_subdev(sd);
  i2c_unregister_device(client);
 }
 cobalt_i2c_exit(cobalt);
 cobalt_free_msi(cobalt, pci_dev);
 cobalt_s_bit_sysctrl(cobalt, COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT, 0);
 cobalt_pci_iounmap(cobalt, pci_dev);
 pci_release_regions(cobalt->pci_dev);
 pci_disable_device(cobalt->pci_dev);
 destroy_workqueue(cobalt->irq_work_queues);

 cobalt_info("removed cobalt card\n");

 v4l2_device_unregister(v4l2_dev);
 kfree(cobalt);
}
