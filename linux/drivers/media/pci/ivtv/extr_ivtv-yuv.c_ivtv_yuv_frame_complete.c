
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int draw_frame; int next_fill_frame; } ;
struct ivtv {TYPE_1__ yuv_info; } ;


 int IVTV_YUV_BUFFERS ;
 int atomic_set (int *,int) ;

void ivtv_yuv_frame_complete(struct ivtv *itv)
{
 atomic_set(&itv->yuv_info.next_fill_frame,
   (itv->yuv_info.draw_frame + 1) % IVTV_YUV_BUFFERS);
}
