
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct osd_info {void* video_rbase; int display_width; int display_height; } ;
struct ivtv_osd_coords {int max_offset; void* y; void* x; void* lines; void* pixel_stride; void* offset; } ;
struct ivtv {struct osd_info* osd_info; } ;


 int CX2341X_MBOX_MAX_DATA ;
 int CX2341X_OSD_GET_OSD_COORDS ;
 int ivtv_vapi_result (struct ivtv*,void**,int ,int ) ;

__attribute__((used)) static int ivtvfb_get_osd_coords(struct ivtv *itv,
          struct ivtv_osd_coords *osd)
{
 struct osd_info *oi = itv->osd_info;
 u32 data[CX2341X_MBOX_MAX_DATA];

 ivtv_vapi_result(itv, data, CX2341X_OSD_GET_OSD_COORDS, 0);

 osd->offset = data[0] - oi->video_rbase;
 osd->max_offset = oi->display_width * oi->display_height * 4;
 osd->pixel_stride = data[1];
 osd->lines = data[2];
 osd->x = data[3];
 osd->y = data[4];
 return 0;
}
