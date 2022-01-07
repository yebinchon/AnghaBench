
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_pipeline {scalar_t__ stream_state; int input; int output; } ;


 scalar_t__ ISP_PIPELINE_STREAM_SINGLESHOT ;
 int isp_pipeline_enable (struct isp_pipeline*,scalar_t__) ;
 int omap3isp_video_resume (int ,int) ;

__attribute__((used)) static void isp_pipeline_resume(struct isp_pipeline *pipe)
{
 int singleshot = pipe->stream_state == ISP_PIPELINE_STREAM_SINGLESHOT;

 omap3isp_video_resume(pipe->output, !singleshot);
 if (singleshot)
  omap3isp_video_resume(pipe->input, 0);
 isp_pipeline_enable(pipe, pipe->stream_state);
}
