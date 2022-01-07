
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_pad {struct media_entity* entity; } ;
struct media_entity {int pipe; } ;
struct isp_pipeline {scalar_t__ stream_state; TYPE_1__* output; } ;
struct TYPE_2__ {int pad; } ;


 scalar_t__ ISP_PIPELINE_STREAM_STOPPED ;
 struct media_pad* media_entity_remote_pad (int *) ;
 struct isp_pipeline* to_isp_pipeline (struct media_entity*) ;

__attribute__((used)) static int isp_pipeline_is_last(struct media_entity *me)
{
 struct isp_pipeline *pipe;
 struct media_pad *pad;

 if (!me->pipe)
  return 0;
 pipe = to_isp_pipeline(me);
 if (pipe->stream_state == ISP_PIPELINE_STREAM_STOPPED)
  return 0;
 pad = media_entity_remote_pad(&pipe->output->pad);
 return pad->entity == me;
}
