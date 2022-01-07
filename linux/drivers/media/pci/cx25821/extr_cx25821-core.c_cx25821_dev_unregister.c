
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {int * i2c_bus; int pci; int base_io_addr; } ;


 int MAX_VID_CAP_CHANNEL_NUM ;
 int SRAM_CH08 ;
 int cx25821_i2c_unregister (int *) ;
 int cx25821_iounmap (struct cx25821_dev*) ;
 int cx25821_video_unregister (struct cx25821_dev*,int) ;
 int pci_resource_len (int ,int ) ;
 int release_mem_region (int ,int ) ;

void cx25821_dev_unregister(struct cx25821_dev *dev)
{
 int i;

 if (!dev->base_io_addr)
  return;

 release_mem_region(dev->base_io_addr, pci_resource_len(dev->pci, 0));

 for (i = 0; i < MAX_VID_CAP_CHANNEL_NUM - 1; i++) {
  if (i == SRAM_CH08)
   continue;






  cx25821_video_unregister(dev, i);
 }

 cx25821_i2c_unregister(&dev->i2c_bus[0]);
 cx25821_iounmap(dev);
}
