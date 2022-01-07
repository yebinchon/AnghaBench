
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct saa7164_dev {size_t board; int msi; int v4l2_dev; int devlist; int * i2c_bus; TYPE_1__* ports; scalar_t__ firmwareloaded; int * kthread; } ;
struct pci_dev {int irq; } ;
struct TYPE_7__ {scalar_t__ porta; scalar_t__ portb; scalar_t__ portc; scalar_t__ portd; scalar_t__ porte; scalar_t__ portf; } ;
struct TYPE_6__ {int poll_interval; int read_interval; int irq_svc_interval; int svc_interval; int irq_interval; } ;


 size_t SAA7164_BOARD_UNKNOWN ;
 scalar_t__ SAA7164_MPEG_DVB ;
 scalar_t__ SAA7164_MPEG_ENCODER ;
 scalar_t__ SAA7164_MPEG_VBI ;
 size_t SAA7164_PORT_ENC1 ;
 size_t SAA7164_PORT_ENC2 ;
 size_t SAA7164_PORT_TS1 ;
 size_t SAA7164_PORT_TS2 ;
 size_t SAA7164_PORT_VBI1 ;
 size_t SAA7164_PORT_VBI2 ;
 int devlist ;
 int free_irq (int ,struct saa7164_dev*) ;
 scalar_t__ fw_debug ;
 int kfree (struct saa7164_dev*) ;
 int kthread_stop (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct saa7164_dev* pci_get_drvdata (struct pci_dev*) ;
 int saa7164_api_set_debug (struct saa7164_dev*,int) ;
 TYPE_5__* saa7164_boards ;
 int saa7164_dev_unregister (struct saa7164_dev*) ;
 int saa7164_dvb_unregister (TYPE_1__*) ;
 int saa7164_encoder_unregister (TYPE_1__*) ;
 int saa7164_histogram_print (TYPE_1__*,int *) ;
 int saa7164_i2c_unregister (int *) ;
 int saa7164_shutdown (struct saa7164_dev*) ;
 int saa7164_vbi_unregister (TYPE_1__*) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void saa7164_finidev(struct pci_dev *pci_dev)
{
 struct saa7164_dev *dev = pci_get_drvdata(pci_dev);

 if (dev->board != SAA7164_BOARD_UNKNOWN) {
  if (fw_debug && dev->kthread) {
   kthread_stop(dev->kthread);
   dev->kthread = ((void*)0);
  }
  if (dev->firmwareloaded)
   saa7164_api_set_debug(dev, 0x00);
 }

 saa7164_histogram_print(&dev->ports[SAA7164_PORT_ENC1],
  &dev->ports[SAA7164_PORT_ENC1].irq_interval);
 saa7164_histogram_print(&dev->ports[SAA7164_PORT_ENC1],
  &dev->ports[SAA7164_PORT_ENC1].svc_interval);
 saa7164_histogram_print(&dev->ports[SAA7164_PORT_ENC1],
  &dev->ports[SAA7164_PORT_ENC1].irq_svc_interval);
 saa7164_histogram_print(&dev->ports[SAA7164_PORT_ENC1],
  &dev->ports[SAA7164_PORT_ENC1].read_interval);
 saa7164_histogram_print(&dev->ports[SAA7164_PORT_ENC1],
  &dev->ports[SAA7164_PORT_ENC1].poll_interval);
 saa7164_histogram_print(&dev->ports[SAA7164_PORT_VBI1],
  &dev->ports[SAA7164_PORT_VBI1].read_interval);
 saa7164_histogram_print(&dev->ports[SAA7164_PORT_VBI2],
  &dev->ports[SAA7164_PORT_VBI2].poll_interval);

 saa7164_shutdown(dev);

 if (saa7164_boards[dev->board].porta == SAA7164_MPEG_DVB)
  saa7164_dvb_unregister(&dev->ports[SAA7164_PORT_TS1]);

 if (saa7164_boards[dev->board].portb == SAA7164_MPEG_DVB)
  saa7164_dvb_unregister(&dev->ports[SAA7164_PORT_TS2]);

 if (saa7164_boards[dev->board].portc == SAA7164_MPEG_ENCODER)
  saa7164_encoder_unregister(&dev->ports[SAA7164_PORT_ENC1]);

 if (saa7164_boards[dev->board].portd == SAA7164_MPEG_ENCODER)
  saa7164_encoder_unregister(&dev->ports[SAA7164_PORT_ENC2]);

 if (saa7164_boards[dev->board].porte == SAA7164_MPEG_VBI)
  saa7164_vbi_unregister(&dev->ports[SAA7164_PORT_VBI1]);

 if (saa7164_boards[dev->board].portf == SAA7164_MPEG_VBI)
  saa7164_vbi_unregister(&dev->ports[SAA7164_PORT_VBI2]);

 saa7164_i2c_unregister(&dev->i2c_bus[0]);
 saa7164_i2c_unregister(&dev->i2c_bus[1]);
 saa7164_i2c_unregister(&dev->i2c_bus[2]);


 free_irq(pci_dev->irq, dev);

 if (dev->msi) {
  pci_disable_msi(pci_dev);
  dev->msi = 0;
 }

 pci_disable_device(pci_dev);

 mutex_lock(&devlist);
 list_del(&dev->devlist);
 mutex_unlock(&devlist);

 saa7164_dev_unregister(dev);
 v4l2_device_unregister(&dev->v4l2_dev);
 kfree(dev);
}
