
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dummy; } ;
struct mantis_pci_drvdata {int rc_map_name; struct mantis_hwconfig* hwconfig; } ;
struct mantis_pci {int intmask_lock; int rc_map_name; struct mantis_hwconfig* hwconfig; struct pci_dev* pdev; int verbose; int num; } ;
struct mantis_hwconfig {int * irq_handler; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MANTIS_ERROR ;
 int STREAM_TO_HIF ;
 int devs ;
 int dprintk (int ,int,char*,int) ;
 int hopper_irq_handler ;
 int kfree (struct mantis_pci*) ;
 struct mantis_pci* kzalloc (int,int ) ;
 int mantis_dma_exit (struct mantis_pci*) ;
 int mantis_dma_init (struct mantis_pci*) ;
 int mantis_dvb_init (struct mantis_pci*) ;
 int mantis_get_mac (struct mantis_pci*) ;
 int mantis_i2c_exit (struct mantis_pci*) ;
 int mantis_i2c_init (struct mantis_pci*) ;
 int mantis_pci_exit (struct mantis_pci*) ;
 int mantis_pci_init (struct mantis_pci*) ;
 int mantis_stream_control (struct mantis_pci*,int ) ;
 int spin_lock_init (int *) ;
 int verbose ;

__attribute__((used)) static int hopper_pci_probe(struct pci_dev *pdev,
       const struct pci_device_id *pci_id)
{
 struct mantis_pci_drvdata *drvdata;
 struct mantis_pci *mantis;
 struct mantis_hwconfig *config;
 int err;

 mantis = kzalloc(sizeof(*mantis), GFP_KERNEL);
 if (!mantis) {
  err = -ENOMEM;
  goto fail0;
 }

 drvdata = (void *)pci_id->driver_data;
 mantis->num = devs;
 mantis->verbose = verbose;
 mantis->pdev = pdev;
 config = drvdata->hwconfig;
 config->irq_handler = &hopper_irq_handler;
 mantis->hwconfig = config;
 mantis->rc_map_name = drvdata->rc_map_name;

 spin_lock_init(&mantis->intmask_lock);

 err = mantis_pci_init(mantis);
 if (err) {
  dprintk(MANTIS_ERROR, 1, "ERROR: Mantis PCI initialization failed <%d>", err);
  goto fail1;
 }

 err = mantis_stream_control(mantis, STREAM_TO_HIF);
 if (err < 0) {
  dprintk(MANTIS_ERROR, 1, "ERROR: Mantis stream control failed <%d>", err);
  goto fail1;
 }

 err = mantis_i2c_init(mantis);
 if (err < 0) {
  dprintk(MANTIS_ERROR, 1, "ERROR: Mantis I2C initialization failed <%d>", err);
  goto fail2;
 }

 err = mantis_get_mac(mantis);
 if (err < 0) {
  dprintk(MANTIS_ERROR, 1, "ERROR: Mantis MAC address read failed <%d>", err);
  goto fail2;
 }

 err = mantis_dma_init(mantis);
 if (err < 0) {
  dprintk(MANTIS_ERROR, 1, "ERROR: Mantis DMA initialization failed <%d>", err);
  goto fail3;
 }

 err = mantis_dvb_init(mantis);
 if (err < 0) {
  dprintk(MANTIS_ERROR, 1, "ERROR: Mantis DVB initialization failed <%d>", err);
  goto fail4;
 }
 devs++;

 return err;

fail4:
 dprintk(MANTIS_ERROR, 1, "ERROR: Mantis DMA exit! <%d>", err);
 mantis_dma_exit(mantis);

fail3:
 dprintk(MANTIS_ERROR, 1, "ERROR: Mantis I2C exit! <%d>", err);
 mantis_i2c_exit(mantis);

fail2:
 dprintk(MANTIS_ERROR, 1, "ERROR: Mantis PCI exit! <%d>", err);
 mantis_pci_exit(mantis);

fail1:
 dprintk(MANTIS_ERROR, 1, "ERROR: Mantis free! <%d>", err);
 kfree(mantis);

fail0:
 return err;
}
