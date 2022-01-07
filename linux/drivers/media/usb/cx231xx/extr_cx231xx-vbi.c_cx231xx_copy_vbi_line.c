
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct cx231xx_dmaqueue {int current_field; scalar_t__ lines_completed; scalar_t__ bytes_left_in_line; scalar_t__ lines_per_field; int is_partial_line; scalar_t__ pos; } ;
struct cx231xx_buffer {int dummy; } ;
struct TYPE_3__ {struct cx231xx_buffer* buf; } ;
struct TYPE_4__ {TYPE_1__ bulk_ctl; } ;
struct cx231xx {int width; TYPE_2__ vbi_mode; } ;


 int cx231xx_do_vbi_copy (struct cx231xx*,struct cx231xx_dmaqueue*,int *,scalar_t__) ;
 scalar_t__ cx231xx_is_vbi_buffer_done (struct cx231xx*,struct cx231xx_dmaqueue*) ;
 int cx231xx_reset_vbi_buffer (struct cx231xx*,struct cx231xx_dmaqueue*) ;
 int vbi_buffer_filled (struct cx231xx*,struct cx231xx_dmaqueue*,struct cx231xx_buffer*) ;

u32 cx231xx_copy_vbi_line(struct cx231xx *dev, struct cx231xx_dmaqueue *dma_q,
     u8 *p_line, u32 length, int field_number)
{
 u32 bytes_to_copy;
 struct cx231xx_buffer *buf;
 u32 _line_size = dev->width * 2;

 if (dma_q->current_field == -1) {

  cx231xx_reset_vbi_buffer(dev, dma_q);
 }

 if (dma_q->current_field != field_number)
  dma_q->lines_completed = 0;


 buf = dev->vbi_mode.bulk_ctl.buf;


 dma_q->current_field = field_number;

 bytes_to_copy = dma_q->bytes_left_in_line;
 if (bytes_to_copy > length)
  bytes_to_copy = length;

 if (dma_q->lines_completed >= dma_q->lines_per_field) {
  dma_q->bytes_left_in_line -= bytes_to_copy;
  dma_q->is_partial_line =
      (dma_q->bytes_left_in_line == 0) ? 0 : 1;
  return 0;
 }

 dma_q->is_partial_line = 1;



 if (!buf) {
  dma_q->bytes_left_in_line -= bytes_to_copy;
  dma_q->is_partial_line =
      (dma_q->bytes_left_in_line == 0) ? 0 : 1;
  return bytes_to_copy;
 }


 cx231xx_do_vbi_copy(dev, dma_q, p_line, bytes_to_copy);

 dma_q->pos += bytes_to_copy;
 dma_q->bytes_left_in_line -= bytes_to_copy;

 if (dma_q->bytes_left_in_line == 0) {

  dma_q->bytes_left_in_line = _line_size;
  dma_q->lines_completed++;
  dma_q->is_partial_line = 0;

  if (cx231xx_is_vbi_buffer_done(dev, dma_q) && buf) {

   vbi_buffer_filled(dev, dma_q, buf);

   dma_q->pos = 0;
   dma_q->lines_completed = 0;
   cx231xx_reset_vbi_buffer(dev, dma_q);
  }
 }

 return bytes_to_copy;
}
