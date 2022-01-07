
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ngene {int iomem; int pci_dev; void* vin_buf; int vin_rbuf; TYPE_1__* card_info; void* ain_buf; int ain_rbuf; void* tsin_buf; int tsin_rbuf; void* tsout_buf; int tsout_rbuf; } ;
struct TYPE_2__ {int* io_type; } ;


 int AIN_BUF_SIZE ;
 scalar_t__ AllocCommonBuffers (struct ngene*) ;
 int ENOMEM ;
 int NGENE_IO_AIN ;
 int NGENE_IO_HDTV ;
 int NGENE_IO_TSIN ;
 int NGENE_IO_TSOUT ;
 int TSIN_BUF_SIZE ;
 int TSOUT_BUF_SIZE ;
 int VIN_BUF_SIZE ;
 int dvb_ringbuffer_init (int *,void*,int ) ;
 int ioremap (int ,int ) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 void* vmalloc (int ) ;

__attribute__((used)) static int ngene_get_buffers(struct ngene *dev)
{
 if (AllocCommonBuffers(dev))
  return -ENOMEM;
 if (dev->card_info->io_type[4] & NGENE_IO_TSOUT) {
  dev->tsout_buf = vmalloc(TSOUT_BUF_SIZE);
  if (!dev->tsout_buf)
   return -ENOMEM;
  dvb_ringbuffer_init(&dev->tsout_rbuf,
        dev->tsout_buf, TSOUT_BUF_SIZE);
 }
 if (dev->card_info->io_type[2]&NGENE_IO_TSIN) {
  dev->tsin_buf = vmalloc(TSIN_BUF_SIZE);
  if (!dev->tsin_buf)
   return -ENOMEM;
  dvb_ringbuffer_init(&dev->tsin_rbuf,
        dev->tsin_buf, TSIN_BUF_SIZE);
 }
 if (dev->card_info->io_type[2] & NGENE_IO_AIN) {
  dev->ain_buf = vmalloc(AIN_BUF_SIZE);
  if (!dev->ain_buf)
   return -ENOMEM;
  dvb_ringbuffer_init(&dev->ain_rbuf, dev->ain_buf, AIN_BUF_SIZE);
 }
 if (dev->card_info->io_type[0] & NGENE_IO_HDTV) {
  dev->vin_buf = vmalloc(VIN_BUF_SIZE);
  if (!dev->vin_buf)
   return -ENOMEM;
  dvb_ringbuffer_init(&dev->vin_rbuf, dev->vin_buf, VIN_BUF_SIZE);
 }
 dev->iomem = ioremap(pci_resource_start(dev->pci_dev, 0),
        pci_resource_len(dev->pci_dev, 0));
 if (!dev->iomem)
  return -ENOMEM;

 return 0;
}
