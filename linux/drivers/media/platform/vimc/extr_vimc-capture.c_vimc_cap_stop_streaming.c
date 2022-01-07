
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct vimc_cap_device {TYPE_1__ vdev; int ved; int stream; } ;
struct vb2_queue {int dummy; } ;


 int VB2_BUF_STATE_ERROR ;
 int media_pipeline_stop (int *) ;
 struct vimc_cap_device* vb2_get_drv_priv (struct vb2_queue*) ;
 int vimc_cap_return_all_buffers (struct vimc_cap_device*,int ) ;
 int vimc_streamer_s_stream (int *,int *,int ) ;

__attribute__((used)) static void vimc_cap_stop_streaming(struct vb2_queue *vq)
{
 struct vimc_cap_device *vcap = vb2_get_drv_priv(vq);

 vimc_streamer_s_stream(&vcap->stream, &vcap->ved, 0);


 media_pipeline_stop(&vcap->vdev.entity);


 vimc_cap_return_all_buffers(vcap, VB2_BUF_STATE_ERROR);
}
