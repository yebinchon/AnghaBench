
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flite_buffer {int list; } ;
struct fimc_lite {int active_buf_q; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void fimc_lite_active_queue_add(struct fimc_lite *dev,
      struct flite_buffer *buf)
{
 list_add_tail(&buf->list, &dev->active_buf_q);
}
