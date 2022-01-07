
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct device {int dummy; } ;
struct cio2_queue {size_t bufs_first; int frame_sequence; int bufs_queued; struct cio2_buffer** bufs; struct cio2_fbpt_entry* fbpt; } ;
struct TYPE_8__ {unsigned int num_of_bytes; } ;
struct TYPE_7__ {int ctrl; } ;
struct cio2_fbpt_entry {TYPE_2__ second_entry; TYPE_1__ first_entry; } ;
struct cio2_device {TYPE_5__* pci_dev; struct cio2_queue* cur_queue; } ;
struct TYPE_12__ {TYPE_3__* planes; int timestamp; int index; } ;
struct TYPE_10__ {TYPE_6__ vb2_buf; int sequence; int field; } ;
struct cio2_buffer {TYPE_4__ vbb; } ;
struct TYPE_11__ {struct device dev; } ;
struct TYPE_9__ {unsigned int length; } ;


 int CIO2_FBPT_CTRL_VALID ;
 int CIO2_MAX_BUFFERS ;
 size_t CIO2_MAX_LOPS ;
 unsigned int CIO2_QUEUES ;
 int V4L2_FIELD_NONE ;
 int VB2_BUF_STATE_DONE ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int cio2_fbpt_entry_init_dummy (struct cio2_device*,struct cio2_fbpt_entry* const) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,unsigned int) ;
 int dev_warn (struct device*,char*,unsigned int,...) ;
 int ktime_get_ns () ;
 int vb2_buffer_done (TYPE_6__*,int ) ;

__attribute__((used)) static void cio2_buffer_done(struct cio2_device *cio2, unsigned int dma_chan)
{
 struct device *dev = &cio2->pci_dev->dev;
 struct cio2_queue *q = cio2->cur_queue;
 int buffers_found = 0;
 u64 ns = ktime_get_ns();

 if (dma_chan >= CIO2_QUEUES) {
  dev_err(dev, "bad DMA channel %i\n", dma_chan);
  return;
 }


 do {
  struct cio2_fbpt_entry *const entry =
   &q->fbpt[q->bufs_first * CIO2_MAX_LOPS];
  struct cio2_buffer *b;

  if (entry->first_entry.ctrl & CIO2_FBPT_CTRL_VALID)
   break;

  b = q->bufs[q->bufs_first];
  if (b) {
   unsigned int bytes = entry[1].second_entry.num_of_bytes;

   q->bufs[q->bufs_first] = ((void*)0);
   atomic_dec(&q->bufs_queued);
   dev_dbg(&cio2->pci_dev->dev,
    "buffer %i done\n", b->vbb.vb2_buf.index);

   b->vbb.vb2_buf.timestamp = ns;
   b->vbb.field = V4L2_FIELD_NONE;
   b->vbb.sequence = atomic_read(&q->frame_sequence);
   if (b->vbb.vb2_buf.planes[0].length != bytes)
    dev_warn(dev, "buffer length is %d received %d\n",
      b->vbb.vb2_buf.planes[0].length,
      bytes);
   vb2_buffer_done(&b->vbb.vb2_buf, VB2_BUF_STATE_DONE);
  }
  atomic_inc(&q->frame_sequence);
  cio2_fbpt_entry_init_dummy(cio2, entry);
  q->bufs_first = (q->bufs_first + 1) % CIO2_MAX_BUFFERS;
  buffers_found++;
 } while (1);

 if (buffers_found == 0)
  dev_warn(&cio2->pci_dev->dev,
    "no ready buffers found on DMA channel %u\n",
    dma_chan);
}
