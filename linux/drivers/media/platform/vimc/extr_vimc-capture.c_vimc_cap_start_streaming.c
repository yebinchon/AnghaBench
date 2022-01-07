
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pipe; } ;
struct media_entity {int dummy; } ;
struct TYPE_3__ {struct media_entity entity; } ;
struct vimc_cap_device {int ved; TYPE_2__ stream; scalar_t__ sequence; TYPE_1__ vdev; } ;
struct vb2_queue {int dummy; } ;


 int VB2_BUF_STATE_QUEUED ;
 int media_pipeline_start (struct media_entity*,int *) ;
 int media_pipeline_stop (struct media_entity*) ;
 struct vimc_cap_device* vb2_get_drv_priv (struct vb2_queue*) ;
 int vimc_cap_return_all_buffers (struct vimc_cap_device*,int ) ;
 int vimc_streamer_s_stream (TYPE_2__*,int *,int) ;

__attribute__((used)) static int vimc_cap_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct vimc_cap_device *vcap = vb2_get_drv_priv(vq);
 struct media_entity *entity = &vcap->vdev.entity;
 int ret;

 vcap->sequence = 0;


 ret = media_pipeline_start(entity, &vcap->stream.pipe);
 if (ret) {
  vimc_cap_return_all_buffers(vcap, VB2_BUF_STATE_QUEUED);
  return ret;
 }

 ret = vimc_streamer_s_stream(&vcap->stream, &vcap->ved, 1);
 if (ret) {
  media_pipeline_stop(entity);
  vimc_cap_return_all_buffers(vcap, VB2_BUF_STATE_QUEUED);
  return ret;
 }

 return 0;
}
