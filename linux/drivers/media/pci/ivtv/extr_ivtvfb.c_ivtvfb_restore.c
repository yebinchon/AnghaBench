
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_info {int* palette_cur; int pan_cur; int ivtvfb_info; int blank_cur; int fbvar_cur; } ;
struct ivtv {struct osd_info* osd_info; } ;


 int ivtvfb_blank (int ,int *) ;
 int ivtvfb_set_var (struct ivtv*,int *) ;
 int write_reg (int,int) ;

__attribute__((used)) static void ivtvfb_restore(struct ivtv *itv)
{
 struct osd_info *oi = itv->osd_info;
 int i;

 ivtvfb_set_var(itv, &oi->fbvar_cur);
 ivtvfb_blank(oi->blank_cur, &oi->ivtvfb_info);
 for (i = 0; i < 256; i++) {
  write_reg(i, 0x02a30);
  write_reg(oi->palette_cur[i], 0x02a34);
 }
 write_reg(oi->pan_cur, 0x02a0c);
}
