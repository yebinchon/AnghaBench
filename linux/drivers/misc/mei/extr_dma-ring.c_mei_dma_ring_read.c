
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mei_device {TYPE_1__* dr_dscr; int dev; } ;
struct hbm_dma_ring_ctrl {scalar_t__ dbuf_rd_idx; } ;
struct TYPE_2__ {int size; } ;


 size_t DMA_DSCR_DEVICE ;
 int READ_ONCE (scalar_t__) ;
 scalar_t__ WARN_ON (int) ;
 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int dev_dbg (int ,char*,int) ;
 int mei_data2slots (int) ;
 int mei_dma_copy_from (struct mei_device*,unsigned char*,int,int) ;
 struct hbm_dma_ring_ctrl* mei_dma_ring_ctrl (struct mei_device*) ;

void mei_dma_ring_read(struct mei_device *dev, unsigned char *buf, u32 len)
{
 struct hbm_dma_ring_ctrl *ctrl = mei_dma_ring_ctrl(dev);
 u32 dbuf_depth;
 u32 rd_idx, rem, slots;

 if (WARN_ON(!ctrl))
  return;

 dev_dbg(dev->dev, "reading from dma %u bytes\n", len);

 if (!len)
  return;

 dbuf_depth = dev->dr_dscr[DMA_DSCR_DEVICE].size >> 2;
 rd_idx = READ_ONCE(ctrl->dbuf_rd_idx) & (dbuf_depth - 1);
 slots = mei_data2slots(len);


 if (!buf)
  goto out;

 if (rd_idx + slots > dbuf_depth) {
  buf += mei_dma_copy_from(dev, buf, rd_idx, dbuf_depth - rd_idx);
  rem = slots - (dbuf_depth - rd_idx);
  rd_idx = 0;
 } else {
  rem = slots;
 }

 mei_dma_copy_from(dev, buf, rd_idx, rem);
out:
 WRITE_ONCE(ctrl->dbuf_rd_idx, ctrl->dbuf_rd_idx + slots);
}
