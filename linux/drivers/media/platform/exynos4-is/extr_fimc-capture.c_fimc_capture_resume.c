
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entity; } ;
struct exynos_video_entity {TYPE_1__ vdev; } ;
struct fimc_vid_cap {int reqbufs_count; int pending_buf_q; scalar_t__ buf_index; int active_buf_q; struct exynos_video_entity ve; } ;
struct TYPE_4__ {int vb2_buf; } ;
struct fimc_vid_buffer {TYPE_2__ vb; } ;
struct fimc_dev {int state; struct fimc_vid_cap vid_cap; } ;


 int INIT_LIST_HEAD (int *) ;
 int ST_CAPT_SUSPENDED ;
 int buffer_queue (int *) ;
 int clear_bit (int ,int *) ;
 int fimc_capture_hw_init (struct fimc_dev*) ;
 struct fimc_vid_buffer* fimc_pending_queue_pop (struct fimc_vid_cap*) ;
 int fimc_pipeline_call (struct exynos_video_entity*,int ,int *,int) ;
 scalar_t__ list_empty (int *) ;
 int open ;
 int test_and_clear_bit (int ,int *) ;

int fimc_capture_resume(struct fimc_dev *fimc)
{
 struct fimc_vid_cap *vid_cap = &fimc->vid_cap;
 struct exynos_video_entity *ve = &vid_cap->ve;
 struct fimc_vid_buffer *buf;
 int i;

 if (!test_and_clear_bit(ST_CAPT_SUSPENDED, &fimc->state))
  return 0;

 INIT_LIST_HEAD(&fimc->vid_cap.active_buf_q);
 vid_cap->buf_index = 0;
 fimc_pipeline_call(ve, open, &ve->vdev.entity, 0);
 fimc_capture_hw_init(fimc);

 clear_bit(ST_CAPT_SUSPENDED, &fimc->state);

 for (i = 0; i < vid_cap->reqbufs_count; i++) {
  if (list_empty(&vid_cap->pending_buf_q))
   break;
  buf = fimc_pending_queue_pop(vid_cap);
  buffer_queue(&buf->vb.vb2_buf);
 }
 return 0;

}
