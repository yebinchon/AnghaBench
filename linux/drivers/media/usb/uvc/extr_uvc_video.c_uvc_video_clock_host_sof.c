
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uvc_clock_sample {int host_sof; int dev_sof; } ;
typedef int s8 ;



__attribute__((used)) static u16 uvc_video_clock_host_sof(const struct uvc_clock_sample *sample)
{

 s8 delta_sof;

 delta_sof = (sample->host_sof - sample->dev_sof) & 255;

 return (sample->dev_sof + delta_sof) & 2047;
}
