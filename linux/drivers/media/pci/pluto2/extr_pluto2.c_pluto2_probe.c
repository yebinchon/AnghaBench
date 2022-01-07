
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {int * parent; } ;
struct TYPE_17__ {TYPE_2__* algo_data; TYPE_1__ dev; int owner; int name; } ;
struct TYPE_13__ {struct dmx_demux* demux; int filternum; } ;
struct TYPE_16__ {int source; } ;
struct dmx_demux {int capabilities; int (* add_frontend ) (struct dmx_demux*,TYPE_3__*) ;int (* connect_frontend ) (struct dmx_demux*,TYPE_3__*) ;int (* remove_frontend ) (struct dmx_demux*,TYPE_3__*) ;int (* disconnect_frontend ) (struct dmx_demux*) ;} ;
struct dvb_demux {int filternum; int feednum; struct dmx_demux dmx; int stop_feed; int start_feed; } ;
struct dvb_adapter {int proposed_mac; } ;
struct TYPE_15__ {int udelay; int timeout; int getscl; int getsda; int (* setscl ) (struct pluto*,int) ;int (* setsda ) (struct pluto*,int) ;struct pluto* data; } ;
struct pluto {int io_mem; TYPE_8__ i2c_adap; TYPE_11__ dmxdev; TYPE_3__ hw_frontend; TYPE_3__ mem_frontend; int dvbnet; struct dvb_demux demux; struct dvb_adapter dvb_adapter; TYPE_2__ i2c_bit; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int irq; int dev; } ;


 int DMA_BIT_MASK (int) ;
 int DMX_FRONTEND_0 ;
 int DMX_MEMORY_BASED_FILTERING ;
 int DMX_MEMORY_FE ;
 int DMX_SECTION_FILTERING ;
 int DMX_TS_FILTERING ;
 int DRIVER_NAME ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int NHWFILTERS ;
 int THIS_MODULE ;
 int adapter_nr ;
 int dvb_dmx_init (struct dvb_demux*) ;
 int dvb_dmx_release (struct dvb_demux*) ;
 int dvb_dmxdev_init (TYPE_11__*,struct dvb_adapter*) ;
 int dvb_dmxdev_release (TYPE_11__*) ;
 int dvb_net_init (struct dvb_adapter*,int *,struct dmx_demux*) ;
 int dvb_register_adapter (struct dvb_adapter*,int ,int ,int *,int ) ;
 int dvb_unregister_adapter (struct dvb_adapter*) ;
 int free_irq (int ,struct pluto*) ;
 int frontend_init (struct pluto*) ;
 int i2c_bit_add_bus (TYPE_8__*) ;
 int i2c_del_adapter (TYPE_8__*) ;
 int i2c_set_adapdata (TYPE_8__*,struct pluto*) ;
 int kfree (struct pluto*) ;
 struct pluto* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct pluto*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int pluto_getscl ;
 int pluto_getsda ;
 int pluto_hw_exit (struct pluto*) ;
 int pluto_hw_init (struct pluto*) ;
 int pluto_irq ;
 int pluto_read_mac (struct pluto*,int ) ;
 int pluto_read_rev (struct pluto*) ;
 int pluto_read_serial (struct pluto*) ;
 int pluto_setscl (struct pluto*,int) ;
 int pluto_setsda (struct pluto*,int) ;
 int pluto_start_feed ;
 int pluto_stop_feed ;
 int request_irq (int ,int ,int ,int ,struct pluto*) ;
 int strscpy (int ,int ,int) ;
 int stub1 (struct dmx_demux*,TYPE_3__*) ;
 int stub2 (struct dmx_demux*,TYPE_3__*) ;
 int stub3 (struct dmx_demux*,TYPE_3__*) ;
 int stub4 (struct dmx_demux*) ;
 int stub5 (struct dmx_demux*,TYPE_3__*) ;
 int stub6 (struct dmx_demux*,TYPE_3__*) ;

__attribute__((used)) static int pluto2_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct pluto *pluto;
 struct dvb_adapter *dvb_adapter;
 struct dvb_demux *dvbdemux;
 struct dmx_demux *dmx;
 int ret = -ENOMEM;

 pluto = kzalloc(sizeof(struct pluto), GFP_KERNEL);
 if (!pluto)
  goto out;

 pluto->pdev = pdev;

 ret = pci_enable_device(pdev);
 if (ret < 0)
  goto err_kfree;


 pci_write_config_dword(pdev, 0x6c, 0x8000);

 ret = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
 if (ret < 0)
  goto err_pci_disable_device;

 pci_set_master(pdev);

 ret = pci_request_regions(pdev, DRIVER_NAME);
 if (ret < 0)
  goto err_pci_disable_device;

 pluto->io_mem = pci_iomap(pdev, 0, 0x40);
 if (!pluto->io_mem) {
  ret = -EIO;
  goto err_pci_release_regions;
 }

 pci_set_drvdata(pdev, pluto);

 ret = request_irq(pdev->irq, pluto_irq, IRQF_SHARED, DRIVER_NAME, pluto);
 if (ret < 0)
  goto err_pci_iounmap;

 ret = pluto_hw_init(pluto);
 if (ret < 0)
  goto err_free_irq;


 i2c_set_adapdata(&pluto->i2c_adap, pluto);
 strscpy(pluto->i2c_adap.name, DRIVER_NAME, sizeof(pluto->i2c_adap.name));
 pluto->i2c_adap.owner = THIS_MODULE;
 pluto->i2c_adap.dev.parent = &pdev->dev;
 pluto->i2c_adap.algo_data = &pluto->i2c_bit;
 pluto->i2c_bit.data = pluto;
 pluto->i2c_bit.setsda = pluto_setsda;
 pluto->i2c_bit.setscl = pluto_setscl;
 pluto->i2c_bit.getsda = pluto_getsda;
 pluto->i2c_bit.getscl = pluto_getscl;
 pluto->i2c_bit.udelay = 10;
 pluto->i2c_bit.timeout = 10;


 pluto_setsda(pluto, 1);
 pluto_setscl(pluto, 1);

 ret = i2c_bit_add_bus(&pluto->i2c_adap);
 if (ret < 0)
  goto err_pluto_hw_exit;


 ret = dvb_register_adapter(&pluto->dvb_adapter, DRIVER_NAME,
       THIS_MODULE, &pdev->dev, adapter_nr);
 if (ret < 0)
  goto err_i2c_del_adapter;

 dvb_adapter = &pluto->dvb_adapter;

 pluto_read_rev(pluto);
 pluto_read_serial(pluto);
 pluto_read_mac(pluto, dvb_adapter->proposed_mac);

 dvbdemux = &pluto->demux;
 dvbdemux->filternum = 256;
 dvbdemux->feednum = 256;
 dvbdemux->start_feed = pluto_start_feed;
 dvbdemux->stop_feed = pluto_stop_feed;
 dvbdemux->dmx.capabilities = (DMX_TS_FILTERING |
   DMX_SECTION_FILTERING | DMX_MEMORY_BASED_FILTERING);
 ret = dvb_dmx_init(dvbdemux);
 if (ret < 0)
  goto err_dvb_unregister_adapter;

 dmx = &dvbdemux->dmx;

 pluto->hw_frontend.source = DMX_FRONTEND_0;
 pluto->mem_frontend.source = DMX_MEMORY_FE;
 pluto->dmxdev.filternum = NHWFILTERS;
 pluto->dmxdev.demux = dmx;

 ret = dvb_dmxdev_init(&pluto->dmxdev, dvb_adapter);
 if (ret < 0)
  goto err_dvb_dmx_release;

 ret = dmx->add_frontend(dmx, &pluto->hw_frontend);
 if (ret < 0)
  goto err_dvb_dmxdev_release;

 ret = dmx->add_frontend(dmx, &pluto->mem_frontend);
 if (ret < 0)
  goto err_remove_hw_frontend;

 ret = dmx->connect_frontend(dmx, &pluto->hw_frontend);
 if (ret < 0)
  goto err_remove_mem_frontend;

 ret = frontend_init(pluto);
 if (ret < 0)
  goto err_disconnect_frontend;

 dvb_net_init(dvb_adapter, &pluto->dvbnet, dmx);
out:
 return ret;

err_disconnect_frontend:
 dmx->disconnect_frontend(dmx);
err_remove_mem_frontend:
 dmx->remove_frontend(dmx, &pluto->mem_frontend);
err_remove_hw_frontend:
 dmx->remove_frontend(dmx, &pluto->hw_frontend);
err_dvb_dmxdev_release:
 dvb_dmxdev_release(&pluto->dmxdev);
err_dvb_dmx_release:
 dvb_dmx_release(dvbdemux);
err_dvb_unregister_adapter:
 dvb_unregister_adapter(dvb_adapter);
err_i2c_del_adapter:
 i2c_del_adapter(&pluto->i2c_adap);
err_pluto_hw_exit:
 pluto_hw_exit(pluto);
err_free_irq:
 free_irq(pdev->irq, pluto);
err_pci_iounmap:
 pci_iounmap(pdev, pluto->io_mem);
err_pci_release_regions:
 pci_release_regions(pdev);
err_pci_disable_device:
 pci_disable_device(pdev);
err_kfree:
 kfree(pluto);
 goto out;
}
