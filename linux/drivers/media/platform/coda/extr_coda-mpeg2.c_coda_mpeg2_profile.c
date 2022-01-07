
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int V4L2_MPEG_VIDEO_MPEG2_PROFILE_HIGH ;
 int V4L2_MPEG_VIDEO_MPEG2_PROFILE_MAIN ;
 int V4L2_MPEG_VIDEO_MPEG2_PROFILE_SIMPLE ;
 int V4L2_MPEG_VIDEO_MPEG2_PROFILE_SNR_SCALABLE ;
 int V4L2_MPEG_VIDEO_MPEG2_PROFILE_SPATIALLY_SCALABLE ;

int coda_mpeg2_profile(int profile_idc)
{
 switch (profile_idc) {
 case 5:
  return V4L2_MPEG_VIDEO_MPEG2_PROFILE_SIMPLE;
 case 4:
  return V4L2_MPEG_VIDEO_MPEG2_PROFILE_MAIN;
 case 3:
  return V4L2_MPEG_VIDEO_MPEG2_PROFILE_SNR_SCALABLE;
 case 2:
  return V4L2_MPEG_VIDEO_MPEG2_PROFILE_SPATIALLY_SCALABLE;
 case 1:
  return V4L2_MPEG_VIDEO_MPEG2_PROFILE_HIGH;
 default:
  return -EINVAL;
 }
}
