
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {int std; int sensor_framerate; int v4l2_dev; int standard; } ;


 int GO7007_STD_NTSC ;
 int GO7007_STD_PAL ;
 int V4L2_STD_625_50 ;
 int call_all (int *,int ,int ,int) ;
 int s_std ;
 int set_capture_size (struct go7007*,int *,int ) ;
 int video ;

__attribute__((used)) static int go7007_s_std(struct go7007 *go)
{
 if (go->std & V4L2_STD_625_50) {
  go->standard = GO7007_STD_PAL;
  go->sensor_framerate = 25025;
 } else {
  go->standard = GO7007_STD_NTSC;
  go->sensor_framerate = 30000;
 }

 call_all(&go->v4l2_dev, video, s_std, go->std);
 set_capture_size(go, ((void*)0), 0);
 return 0;
}
