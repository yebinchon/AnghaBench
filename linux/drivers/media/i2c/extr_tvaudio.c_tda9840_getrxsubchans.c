
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct CHIPSTATE {struct v4l2_subdev sd; } ;


 int TDA9840_DS_DUAL ;
 int TDA9840_ST_STEREO ;
 int V4L2_TUNER_SUB_LANG1 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int chip_read (struct CHIPSTATE*) ;
 int debug ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;

__attribute__((used)) static int tda9840_getrxsubchans(struct CHIPSTATE *chip)
{
 struct v4l2_subdev *sd = &chip->sd;
 int val, mode;

 mode = V4L2_TUNER_SUB_MONO;

 val = chip_read(chip);
 if (val < 0)
  return mode;

 if (val & TDA9840_DS_DUAL)
  mode |= V4L2_TUNER_SUB_LANG1 | V4L2_TUNER_SUB_LANG2;
 if (val & TDA9840_ST_STEREO)
  mode = V4L2_TUNER_SUB_STEREO;

 v4l2_dbg(1, debug, sd,
  "tda9840_getrxsubchans(): raw chip read: %d, return: %d\n",
  val, mode);
 return mode;
}
