
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbi_cc {int even; int odd; } ;
struct v4l2_sliced_vbi_data {int dummy; } ;
struct ivtv {int dummy; } ;


 int ivtv_write_vbi_cc_lines (struct ivtv*,struct vbi_cc*) ;
 int ivtv_write_vbi_line (struct ivtv*,struct v4l2_sliced_vbi_data const*,struct vbi_cc*,int*) ;

__attribute__((used)) static void ivtv_write_vbi(struct ivtv *itv,
      const struct v4l2_sliced_vbi_data *sliced,
      size_t cnt)
{
 struct vbi_cc cc = { .odd = { 0x80, 0x80 }, .even = { 0x80, 0x80 } };
 int found_cc = 0;
 size_t i;

 for (i = 0; i < cnt; i++)
  ivtv_write_vbi_line(itv, sliced + i, &cc, &found_cc);

 if (found_cc)
  ivtv_write_vbi_cc_lines(itv, &cc);
}
