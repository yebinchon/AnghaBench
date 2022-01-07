
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_format {int** service_lines; } ;
struct saa711x_state {int std; scalar_t__ ident; } ;


 scalar_t__ R_41_LCR_BASE ;
 scalar_t__ SAA7115 ;




 int V4L2_STD_625_50 ;
 int saa7115_cfg_vbi_off ;
 int saa7115_cfg_vbi_on ;
 int saa711x_has_reg (scalar_t__,scalar_t__) ;
 int saa711x_write (struct v4l2_subdev*,scalar_t__,int) ;
 int saa711x_writeregs (struct v4l2_subdev*,int ) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static void saa711x_set_lcr(struct v4l2_subdev *sd, struct v4l2_sliced_vbi_format *fmt)
{
 struct saa711x_state *state = to_state(sd);
 int is_50hz = (state->std & V4L2_STD_625_50);
 u8 lcr[24];
 int i, x;



 if (!saa711x_has_reg(state->ident, R_41_LCR_BASE))
  return;







 for (i = 0; i <= 23; i++)
  lcr[i] = 0xff;

 if (fmt == ((void*)0)) {

  if (is_50hz)
   for (i = 6; i <= 23; i++)
    lcr[i] = 0xdd;
  else
   for (i = 10; i <= 21; i++)
    lcr[i] = 0xdd;
 } else {


  if (is_50hz) {
   for (i = 0; i <= 5; i++)
    fmt->service_lines[0][i] =
     fmt->service_lines[1][i] = 0;
  }
  else {
   for (i = 0; i <= 9; i++)
    fmt->service_lines[0][i] =
     fmt->service_lines[1][i] = 0;
   for (i = 22; i <= 23; i++)
    fmt->service_lines[0][i] =
     fmt->service_lines[1][i] = 0;
  }


  for (i = 6; i <= 23; i++) {
   lcr[i] = 0;
   for (x = 0; x <= 1; x++) {
    switch (fmt->service_lines[1-x][i]) {
     case 0:
      lcr[i] |= 0xf << (4 * x);
      break;
     case 130:
      lcr[i] |= 1 << (4 * x);
      break;
     case 131:
      lcr[i] |= 4 << (4 * x);
      break;
     case 128:
      lcr[i] |= 5 << (4 * x);
      break;
     case 129:
      lcr[i] |= 7 << (4 * x);
      break;
    }
   }
  }
 }


 for (i = 2; i <= 23; i++) {
  saa711x_write(sd, i - 2 + R_41_LCR_BASE, lcr[i]);
 }


 saa711x_writeregs(sd, fmt == ((void*)0) ?
    saa7115_cfg_vbi_on :
    saa7115_cfg_vbi_off);
}
