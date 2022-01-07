
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int V4L2_MPEG_VIDEO_MPEG2_LEVEL_HIGH ;
 int V4L2_MPEG_VIDEO_MPEG2_LEVEL_HIGH_1440 ;
 int V4L2_MPEG_VIDEO_MPEG2_LEVEL_LOW ;
 int V4L2_MPEG_VIDEO_MPEG2_LEVEL_MAIN ;

int coda_mpeg2_level(int level_idc)
{
 switch (level_idc) {
 case 10:
  return V4L2_MPEG_VIDEO_MPEG2_LEVEL_LOW;
 case 8:
  return V4L2_MPEG_VIDEO_MPEG2_LEVEL_MAIN;
 case 6:
  return V4L2_MPEG_VIDEO_MPEG2_LEVEL_HIGH_1440;
 case 4:
  return V4L2_MPEG_VIDEO_MPEG2_LEVEL_HIGH;
 default:
  return -EINVAL;
 }
}
