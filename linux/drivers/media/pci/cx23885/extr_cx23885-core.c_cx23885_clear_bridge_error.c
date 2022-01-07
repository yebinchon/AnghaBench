
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct cx23885_dev {TYPE_1__* pci; int need_dma_reset; } ;
struct TYPE_2__ {int dev; } ;


 int TC_REQ ;
 int TC_REQ_SET ;
 int VBI_B_DMA ;
 int VBI_C_DMA ;
 int VID_B_DMA ;
 int VID_C_DMA ;
 scalar_t__ cx_read (int ) ;
 int cx_write (int ,scalar_t__) ;
 int dev_info (int *,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void cx23885_clear_bridge_error(struct cx23885_dev *dev)
{
 uint32_t reg1_val, reg2_val;

 if (!dev->need_dma_reset)
  return;

 reg1_val = cx_read(TC_REQ);
 reg2_val = cx_read(TC_REQ_SET);

 if (reg1_val && reg2_val) {
  cx_write(TC_REQ, reg1_val);
  cx_write(TC_REQ_SET, reg2_val);
  cx_read(VID_B_DMA);
  cx_read(VBI_B_DMA);
  cx_read(VID_C_DMA);
  cx_read(VBI_C_DMA);

  dev_info(&dev->pci->dev,
   "dma in progress detected 0x%08x 0x%08x, clearing\n",
   reg1_val, reg2_val);
 }
}
