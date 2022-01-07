
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_format {int** service_lines; int service_set; } ;
struct cx18_av_state {int std; } ;
struct cx18 {struct cx18_av_state av_state; } ;






 int V4L2_STD_525_60 ;
 int cx18_av_read (struct cx18*,int) ;
 int memset (int**,int ,int) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

int cx18_av_g_sliced_fmt(struct v4l2_subdev *sd, struct v4l2_sliced_vbi_format *svbi)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 struct cx18_av_state *state = &cx->av_state;
 static const u16 lcr2vbi[] = {
  0, 130, 0,
  0, 128, 0,
  131,
  0, 0, 129, 0, 0,
  0, 0, 0, 0
 };
 int is_pal = !(state->std & V4L2_STD_525_60);
 int i;

 memset(svbi->service_lines, 0, sizeof(svbi->service_lines));
 svbi->service_set = 0;


 if ((cx18_av_read(cx, 0x404) & 0x10) == 0)
  return 0;

 if (is_pal) {
  for (i = 7; i <= 23; i++) {
   u8 v = cx18_av_read(cx, 0x424 + i - 7);

   svbi->service_lines[0][i] = lcr2vbi[v >> 4];
   svbi->service_lines[1][i] = lcr2vbi[v & 0xf];
   svbi->service_set |= svbi->service_lines[0][i] |
    svbi->service_lines[1][i];
  }
 } else {
  for (i = 10; i <= 21; i++) {
   u8 v = cx18_av_read(cx, 0x424 + i - 10);

   svbi->service_lines[0][i] = lcr2vbi[v >> 4];
   svbi->service_lines[1][i] = lcr2vbi[v & 0xf];
   svbi->service_set |= svbi->service_lines[0][i] |
    svbi->service_lines[1][i];
  }
 }
 return 0;
}
