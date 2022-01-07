
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef enum tw5864_vid_std { ____Placeholder_tw5864_vid_std } tw5864_vid_std ;
 int V4L2_STD_NTSC_443 ;
 int V4L2_STD_NTSC_M ;
 int V4L2_STD_PAL_60 ;
 int V4L2_STD_PAL_B ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM_B ;
 int V4L2_STD_UNKNOWN ;

__attribute__((used)) static v4l2_std_id tw5864_get_v4l2_std(enum tw5864_vid_std std)
{
 switch (std) {
 case 134: return V4L2_STD_NTSC_M;
 case 132: return V4L2_STD_PAL_B;
 case 128: return V4L2_STD_SECAM_B;
 case 133: return V4L2_STD_NTSC_443;
 case 129: return V4L2_STD_PAL_M;
 case 130: return V4L2_STD_PAL_Nc;
 case 131: return V4L2_STD_PAL_60;
 case 135: return V4L2_STD_UNKNOWN;
 }
 return 0;
}
