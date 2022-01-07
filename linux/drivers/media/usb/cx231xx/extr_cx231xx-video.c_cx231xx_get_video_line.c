
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cx231xx_dmaqueue {int last_sav; } ;
struct cx231xx {int dummy; } ;


 int EAV_ACTIVE_VIDEO_FIELD1 ;
 int EAV_ACTIVE_VIDEO_FIELD2 ;
 int EAV_VBLANK_FIELD1 ;
 int EAV_VBLANK_FIELD2 ;


 int cx231xx_copy_video_line (struct cx231xx*,struct cx231xx_dmaqueue*,int*,int,int) ;

u32 cx231xx_get_video_line(struct cx231xx *dev,
      struct cx231xx_dmaqueue *dma_q, u8 sav_eav,
      u8 *p_buffer, u32 buffer_size)
{
 u32 bytes_copied = 0;
 int current_field = -1;

 switch (sav_eav) {
 case 129:



  if ((buffer_size > 3) && (p_buffer[0] == 0xFF) &&
      (p_buffer[1] == 0x00) && (p_buffer[2] == 0x00) &&
      ((p_buffer[3] == EAV_ACTIVE_VIDEO_FIELD1) ||
       (p_buffer[3] == EAV_ACTIVE_VIDEO_FIELD2) ||
       (p_buffer[3] == EAV_VBLANK_FIELD1) ||
       (p_buffer[3] == EAV_VBLANK_FIELD2)))
   return bytes_copied;
  current_field = 1;
  break;

 case 128:



  if ((buffer_size > 3) && (p_buffer[0] == 0xFF) &&
      (p_buffer[1] == 0x00) && (p_buffer[2] == 0x00) &&
      ((p_buffer[3] == EAV_ACTIVE_VIDEO_FIELD1) ||
       (p_buffer[3] == EAV_ACTIVE_VIDEO_FIELD2) ||
       (p_buffer[3] == EAV_VBLANK_FIELD1) ||
       (p_buffer[3] == EAV_VBLANK_FIELD2)))
   return bytes_copied;
  current_field = 2;
  break;
 }

 dma_q->last_sav = sav_eav;

 bytes_copied = cx231xx_copy_video_line(dev, dma_q, p_buffer,
            buffer_size, current_field);

 return bytes_copied;
}
