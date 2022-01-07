
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int audmode; scalar_t__ index; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int SWITCH ;
 int TDA9840_SET_BOTH ;
 int TDA9840_SET_LANG1 ;
 int TDA9840_SET_LANG2 ;
 int TDA9840_SET_MONO ;
 int TDA9840_SET_STEREO ;


 int V4L2_TUNER_MODE_MONO ;
 int debug ;
 int tda9840_status (struct v4l2_subdev*) ;
 int tda9840_write (struct v4l2_subdev*,int ,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int tda9840_s_tuner(struct v4l2_subdev *sd, const struct v4l2_tuner *t)
{
 int stat = tda9840_status(sd);
 int byte;

 if (t->index)
  return -EINVAL;

 stat = stat < 0 ? 0 : stat;
 if (stat == 0 || stat == 0x60)
  byte = TDA9840_SET_MONO;
 else if (stat == 0x40)
  byte = (t->audmode == V4L2_TUNER_MODE_MONO) ?
   TDA9840_SET_MONO : TDA9840_SET_STEREO;
 else {
  switch (t->audmode) {
  case 129:
   byte = TDA9840_SET_BOTH;
   break;
  case 128:
   byte = TDA9840_SET_LANG2;
   break;
  default:
   byte = TDA9840_SET_LANG1;
   break;
  }
 }
 v4l2_dbg(1, debug, sd, "TDA9840_SWITCH: 0x%02x\n", byte);
 tda9840_write(sd, SWITCH, byte);
 return 0;
}
