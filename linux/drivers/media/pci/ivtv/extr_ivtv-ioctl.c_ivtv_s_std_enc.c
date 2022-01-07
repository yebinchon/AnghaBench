
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct TYPE_3__ {int count; int* start; int sliced_decoder_line_size; } ;
struct TYPE_4__ {int width; int height; } ;
struct ivtv {int std; int is_60hz; int is_50hz; int hw_flags; TYPE_1__ vbi; TYPE_2__ cxhdl; } ;


 int IVTV_HW_CX25840 ;
 int V4L2_STD_525_60 ;
 int cx2341x_handler_set_50hz (TYPE_2__*,int) ;
 int ivtv_call_all (struct ivtv*,int ,int ,int) ;
 int s_std ;
 int video ;

void ivtv_s_std_enc(struct ivtv *itv, v4l2_std_id std)
{
 itv->std = std;
 itv->is_60hz = (std & V4L2_STD_525_60) ? 1 : 0;
 itv->is_50hz = !itv->is_60hz;
 cx2341x_handler_set_50hz(&itv->cxhdl, itv->is_50hz);
 itv->cxhdl.width = 720;
 itv->cxhdl.height = itv->is_50hz ? 576 : 480;
 itv->vbi.count = itv->is_50hz ? 18 : 12;
 itv->vbi.start[0] = itv->is_50hz ? 6 : 10;
 itv->vbi.start[1] = itv->is_50hz ? 318 : 273;

 if (itv->hw_flags & IVTV_HW_CX25840)
  itv->vbi.sliced_decoder_line_size = itv->is_60hz ? 272 : 284;


 ivtv_call_all(itv, video, s_std, itv->std);
}
