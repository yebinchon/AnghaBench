
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmx_demux {int (* remove_frontend ) (struct dmx_demux*,int *) ;int (* disconnect_frontend ) (struct dmx_demux*) ;int (* close ) (struct dmx_demux*) ;} ;
struct dvb_demux {struct dmx_demux dmx; } ;
struct dvb_adapter {int dummy; } ;
struct pluto {int io_mem; int i2c_adap; int dmxdev; int hw_frontend; int mem_frontend; scalar_t__ fe; int dvbnet; struct dvb_demux demux; struct dvb_adapter dvb_adapter; } ;
struct pci_dev {int irq; } ;


 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_net_release (int *) ;
 int dvb_unregister_adapter (struct dvb_adapter*) ;
 int dvb_unregister_frontend (scalar_t__) ;
 int free_irq (int ,struct pluto*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct pluto*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pluto* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pluto_hw_exit (struct pluto*) ;
 int stub1 (struct dmx_demux*) ;
 int stub2 (struct dmx_demux*) ;
 int stub3 (struct dmx_demux*,int *) ;
 int stub4 (struct dmx_demux*,int *) ;

__attribute__((used)) static void pluto2_remove(struct pci_dev *pdev)
{
 struct pluto *pluto = pci_get_drvdata(pdev);
 struct dvb_adapter *dvb_adapter = &pluto->dvb_adapter;
 struct dvb_demux *dvbdemux = &pluto->demux;
 struct dmx_demux *dmx = &dvbdemux->dmx;

 dmx->close(dmx);
 dvb_net_release(&pluto->dvbnet);
 if (pluto->fe)
  dvb_unregister_frontend(pluto->fe);

 dmx->disconnect_frontend(dmx);
 dmx->remove_frontend(dmx, &pluto->mem_frontend);
 dmx->remove_frontend(dmx, &pluto->hw_frontend);
 dvb_dmxdev_release(&pluto->dmxdev);
 dvb_dmx_release(dvbdemux);
 dvb_unregister_adapter(dvb_adapter);
 i2c_del_adapter(&pluto->i2c_adap);
 pluto_hw_exit(pluto);
 free_irq(pdev->irq, pluto);
 pci_iounmap(pdev, pluto->io_mem);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 kfree(pluto);
}
