
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_vid_cap {int pending_buf_q; } ;
struct fimc_vid_buffer {int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void fimc_pending_queue_add(struct fimc_vid_cap *vid_cap,
       struct fimc_vid_buffer *buf)
{
 list_add_tail(&buf->list, &vid_cap->pending_buf_q);
}
