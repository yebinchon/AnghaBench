
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_pipeline {int configured; int * part_table; int * stream_config; int lock; } ;


 int kfree (int *) ;
 int lockdep_assert_held (int *) ;
 int vsp1_dl_body_put (int *) ;

__attribute__((used)) static void vsp1_video_cleanup_pipeline(struct vsp1_pipeline *pipe)
{
 lockdep_assert_held(&pipe->lock);


 vsp1_dl_body_put(pipe->stream_config);
 pipe->stream_config = ((void*)0);
 pipe->configured = 0;


 kfree(pipe->part_table);
 pipe->part_table = ((void*)0);
}
