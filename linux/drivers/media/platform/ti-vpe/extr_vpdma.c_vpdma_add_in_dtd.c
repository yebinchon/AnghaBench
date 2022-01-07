
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vpdma_dtd {int start_addr; scalar_t__ client_attr1; scalar_t__ client_attr0; int start_h_v; int frame_width_height; int pkt_ctl; int xfer_length_height; int type_ctl_stride; } ;
struct TYPE_3__ {void* addr; int size; } ;
struct vpdma_desc_list {struct vpdma_dtd* next; TYPE_1__ buf; } ;
struct vpdma_data_format {int depth; scalar_t__ type; scalar_t__ data_type; } ;
struct v4l2_rect {int height; int top; int left; int width; } ;
typedef enum vpdma_channel { ____Placeholder_vpdma_channel } vpdma_channel ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int num; } ;


 scalar_t__ DATA_TYPE_C420 ;
 int DTD_DIR_IN ;
 int VPDMA_DATA_EVEN_LINE_SKIP ;
 scalar_t__ VPDMA_DATA_FMT_TYPE_YUV ;
 int VPDMA_DATA_FRAME_1D ;
 int VPDMA_DATA_MODE_TILED ;
 int VPDMA_DATA_ODD_LINE_SKIP ;
 int WARN_ON (int) ;
 TYPE_2__* chan_info ;
 int dtd_frame_width_height (int,int) ;
 int dtd_pkt_ctl (int,int ,int,int,int) ;
 int dtd_start_h_v (int,int) ;
 int dtd_type_ctl_stride (scalar_t__,int,int,int,int,int,int) ;
 int dtd_xfer_length_height (int ,int) ;
 int dump_dtd (struct vpdma_dtd*) ;

void vpdma_add_in_dtd(struct vpdma_desc_list *list, int width,
  int stride, const struct v4l2_rect *c_rect,
  const struct vpdma_data_format *fmt, dma_addr_t dma_addr,
  enum vpdma_channel chan, int field, u32 flags, int frame_width,
  int frame_height, int start_h, int start_v)
{
 int priority = 0;
 int notify = 1;
 int depth = fmt->depth;
 int channel, next_chan;
 struct v4l2_rect rect = *c_rect;
 struct vpdma_dtd *dtd;

 channel = next_chan = chan_info[chan].num;

 if (fmt->type == VPDMA_DATA_FMT_TYPE_YUV &&
   fmt->data_type == DATA_TYPE_C420) {
  rect.height >>= 1;
  rect.top >>= 1;
  depth = 8;
 }

 dma_addr += rect.top * stride + (rect.left * depth >> 3);

 dtd = list->next;
 WARN_ON((void *)(dtd + 1) > (list->buf.addr + list->buf.size));

 dtd->type_ctl_stride = dtd_type_ctl_stride(fmt->data_type,
     notify,
     field,
     !!(flags & VPDMA_DATA_FRAME_1D),
     !!(flags & VPDMA_DATA_EVEN_LINE_SKIP),
     !!(flags & VPDMA_DATA_ODD_LINE_SKIP),
     stride);

 dtd->xfer_length_height = dtd_xfer_length_height(rect.width,
     rect.height);
 dtd->start_addr = (u32) dma_addr;
 dtd->pkt_ctl = dtd_pkt_ctl(!!(flags & VPDMA_DATA_MODE_TILED),
    DTD_DIR_IN, channel, priority, next_chan);
 dtd->frame_width_height = dtd_frame_width_height(frame_width,
     frame_height);
 dtd->start_h_v = dtd_start_h_v(start_h, start_v);
 dtd->client_attr0 = 0;
 dtd->client_attr1 = 0;

 list->next = dtd + 1;

 dump_dtd(dtd);
}
