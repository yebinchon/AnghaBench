
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_info {int bits_per_pixel; int display_byte_stride; int video_buffer_size; int video_pbase; } ;
struct ivtv {struct osd_info* osd_info; } ;
struct fb_fix_screeninfo {int xpanstep; int ypanstep; int accel; int line_length; scalar_t__ ywrapstep; int visual; int type; int smem_len; int smem_start; int id; } ;


 int FB_ACCEL_NONE ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int IVTVFB_DEBUG_INFO (char*) ;
 int memset (struct fb_fix_screeninfo*,int ,int) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int ivtvfb_get_fix(struct ivtv *itv, struct fb_fix_screeninfo *fix)
{
 struct osd_info *oi = itv->osd_info;

 IVTVFB_DEBUG_INFO("ivtvfb_get_fix\n");
 memset(fix, 0, sizeof(struct fb_fix_screeninfo));
 strscpy(fix->id, "cx23415 TV out", sizeof(fix->id));
 fix->smem_start = oi->video_pbase;
 fix->smem_len = oi->video_buffer_size;
 fix->type = FB_TYPE_PACKED_PIXELS;
 fix->visual = (oi->bits_per_pixel == 8) ? FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
 fix->xpanstep = 1;
 fix->ypanstep = 1;
 fix->ywrapstep = 0;
 fix->line_length = oi->display_byte_stride;
 fix->accel = FB_ACCEL_NONE;
 return 0;
}
