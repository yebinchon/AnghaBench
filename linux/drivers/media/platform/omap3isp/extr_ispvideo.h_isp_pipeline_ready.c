
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_pipeline {int state; } ;


 int ISP_PIPELINE_IDLE_INPUT ;
 int ISP_PIPELINE_IDLE_OUTPUT ;
 int ISP_PIPELINE_QUEUE_INPUT ;
 int ISP_PIPELINE_QUEUE_OUTPUT ;
 int ISP_PIPELINE_STREAM_INPUT ;
 int ISP_PIPELINE_STREAM_OUTPUT ;

__attribute__((used)) static inline int isp_pipeline_ready(struct isp_pipeline *pipe)
{
 return pipe->state == (ISP_PIPELINE_STREAM_INPUT |
          ISP_PIPELINE_STREAM_OUTPUT |
          ISP_PIPELINE_QUEUE_INPUT |
          ISP_PIPELINE_QUEUE_OUTPUT |
          ISP_PIPELINE_IDLE_INPUT |
          ISP_PIPELINE_IDLE_OUTPUT);
}
