
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct dmx_demux {int (* remove_frontend ) (struct dmx_demux*,int *) ;int (* disconnect_frontend ) (struct dmx_demux*) ;int (* close ) (struct dmx_demux*) ;} ;
struct dvb_demux {struct dmx_demux dmx; } ;
struct dvb_adapter {int dummy; } ;
struct dm1105_dev {int io_mem; int i2c_adap; int dmxdev; int hw_frontend; int mem_frontend; scalar_t__ fe; int dvbnet; struct dvb_demux demux; struct dvb_adapter dvb_adapter; } ;


 int dm1105_devcount ;
 int dm1105_hw_exit (struct dm1105_dev*) ;
 int dm1105_ir_exit (struct dm1105_dev*) ;
 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (struct dvb_adapter*) ;
 int dvb_unregister_frontend (scalar_t__) ;
 int free_irq (int ,struct dm1105_dev*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct dm1105_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct dm1105_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int stub1 (struct dmx_demux*) ;
 int stub2 (struct dmx_demux*) ;
 int stub3 (struct dmx_demux*,int *) ;
 int stub4 (struct dmx_demux*,int *) ;

__attribute__((used)) static void dm1105_remove(struct pci_dev *pdev)
{
 struct dm1105_dev *dev = pci_get_drvdata(pdev);
 struct dvb_adapter *dvb_adapter = &dev->dvb_adapter;
 struct dvb_demux *dvbdemux = &dev->demux;
 struct dmx_demux *dmx = &dvbdemux->dmx;

 dm1105_ir_exit(dev);
 dmx->close(dmx);
 dvb_net_release(&dev->dvbnet);
 if (dev->fe)
  dvb_unregister_frontend(dev->fe);

 dmx->disconnect_frontend(dmx);
 dmx->remove_frontend(dmx, &dev->mem_frontend);
 dmx->remove_frontend(dmx, &dev->hw_frontend);
 dvb_dmxdev_release(&dev->dmxdev);
 dvb_dmx_release(dvbdemux);
 dvb_unregister_adapter(dvb_adapter);
 i2c_del_adapter(&dev->i2c_adap);

 dm1105_hw_exit(dev);
 free_irq(pdev->irq, dev);
 pci_iounmap(pdev, dev->io_mem);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 dm1105_devcount--;
 kfree(dev);
}
