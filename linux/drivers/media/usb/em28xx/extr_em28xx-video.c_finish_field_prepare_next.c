
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_v4l2 {scalar_t__ top_field; scalar_t__ progressive; } ;
struct em28xx_dmaqueue {int dummy; } ;
struct em28xx_buffer {scalar_t__ pos; scalar_t__ top_field; } ;
struct em28xx {struct em28xx_v4l2* v4l2; } ;


 int finish_buffer (struct em28xx*,struct em28xx_buffer*) ;
 struct em28xx_buffer* get_next_buf (struct em28xx*,struct em28xx_dmaqueue*) ;

__attribute__((used)) static struct em28xx_buffer *
finish_field_prepare_next(struct em28xx *dev,
     struct em28xx_buffer *buf,
     struct em28xx_dmaqueue *dma_q)
{
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 if (v4l2->progressive || v4l2->top_field) {
  if (buf)
   finish_buffer(dev, buf);
  buf = get_next_buf(dev, dma_q);
 }
 if (buf) {
  buf->top_field = v4l2->top_field;
  buf->pos = 0;
 }

 return buf;
}
