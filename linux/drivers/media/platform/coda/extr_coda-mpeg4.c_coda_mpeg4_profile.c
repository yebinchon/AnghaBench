
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY ;
 int V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_SIMPLE ;
 int V4L2_MPEG_VIDEO_MPEG4_PROFILE_CORE ;
 int V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE ;
 int V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE_SCALABLE ;

int coda_mpeg4_profile(int profile_idc)
{
 switch (profile_idc) {
 case 0:
  return V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE;
 case 15:
  return V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_SIMPLE;
 case 2:
  return V4L2_MPEG_VIDEO_MPEG4_PROFILE_CORE;
 case 1:
  return V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE_SCALABLE;
 case 11:
  return V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY;
 default:
  return -EINVAL;
 }
}
