
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camss_video {int vb2_q; } ;


 scalar_t__ vb2_is_streaming (int *) ;
 int vb2_queue_release (int *) ;

void msm_video_stop_streaming(struct camss_video *video)
{
 if (vb2_is_streaming(&video->vb2_q))
  vb2_queue_release(&video->vb2_q);
}
