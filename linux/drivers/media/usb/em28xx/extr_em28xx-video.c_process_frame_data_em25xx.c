
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx_v4l2 {int top_field; } ;
struct em28xx_dmaqueue {int dummy; } ;
struct em28xx_buffer {int dummy; } ;
struct TYPE_2__ {struct em28xx_buffer* vid_buf; } ;
struct em28xx {TYPE_1__ usb_ctl; scalar_t__ analog_xfer_bulk; struct em28xx_v4l2* v4l2; struct em28xx_dmaqueue vidq; } ;


 unsigned char EM25XX_FRMDATAHDR_BYTE1 ;
 unsigned char EM25XX_FRMDATAHDR_BYTE2_FRAME_END ;
 unsigned char EM25XX_FRMDATAHDR_BYTE2_FRAME_ID ;
 unsigned char EM25XX_FRMDATAHDR_BYTE2_MASK ;
 int em28xx_copy_video (struct em28xx*,struct em28xx_buffer*,unsigned char*,unsigned int) ;
 struct em28xx_buffer* finish_field_prepare_next (struct em28xx*,struct em28xx_buffer*,struct em28xx_dmaqueue*) ;

__attribute__((used)) static inline void process_frame_data_em25xx(struct em28xx *dev,
          unsigned char *data_pkt,
          unsigned int data_len)
{
 struct em28xx_buffer *buf = dev->usb_ctl.vid_buf;
 struct em28xx_dmaqueue *dmaq = &dev->vidq;
 struct em28xx_v4l2 *v4l2 = dev->v4l2;
 bool frame_end = 0;






 if (data_len >= 2) {
  if ((data_pkt[0] == EM25XX_FRMDATAHDR_BYTE1) &&
      ((data_pkt[1] & ~EM25XX_FRMDATAHDR_BYTE2_MASK) == 0x00)) {
   v4l2->top_field = !(data_pkt[1] &
        EM25XX_FRMDATAHDR_BYTE2_FRAME_ID);
   frame_end = data_pkt[1] &
        EM25XX_FRMDATAHDR_BYTE2_FRAME_END;
   data_pkt += 2;
   data_len -= 2;
  }


  if (dev->analog_xfer_bulk && frame_end) {
   buf = finish_field_prepare_next(dev, buf, dmaq);
   dev->usb_ctl.vid_buf = buf;
  }





 }


 if (buf && data_len > 0)
  em28xx_copy_video(dev, buf, data_pkt, data_len);


 if (!dev->analog_xfer_bulk && frame_end) {
  buf = finish_field_prepare_next(dev, buf, dmaq);
  dev->usb_ctl.vid_buf = buf;
 }
}
