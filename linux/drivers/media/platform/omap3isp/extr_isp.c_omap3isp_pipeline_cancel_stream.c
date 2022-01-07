
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_pipeline {scalar_t__ output; scalar_t__ input; } ;


 int omap3isp_video_cancel_stream (scalar_t__) ;

void omap3isp_pipeline_cancel_stream(struct isp_pipeline *pipe)
{
 if (pipe->input)
  omap3isp_video_cancel_stream(pipe->input);
 if (pipe->output)
  omap3isp_video_cancel_stream(pipe->output);
}
