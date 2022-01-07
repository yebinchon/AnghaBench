
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dummy; } ;
struct fb_info {int fix; int var; scalar_t__ par; } ;


 int IVTVFB_DEBUG_INFO (char*) ;
 int ivtv_firmware_check (struct ivtv*,char*) ;
 int ivtvfb_get_fix (struct ivtv*,int *) ;
 int ivtvfb_pan_display (int *,struct fb_info*) ;
 int ivtvfb_set_var (struct ivtv*,int *) ;

__attribute__((used)) static int ivtvfb_set_par(struct fb_info *info)
{
 int rc = 0;
 struct ivtv *itv = (struct ivtv *) info->par;

 IVTVFB_DEBUG_INFO("ivtvfb_set_par\n");

 rc = ivtvfb_set_var(itv, &info->var);
 ivtvfb_pan_display(&info->var, info);
 ivtvfb_get_fix(itv, &info->fix);
 ivtv_firmware_check(itv, "ivtvfb_set_par");
 return rc;
}
