
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ena_com_io_bounce_buffer_control {int buffer_size; int buffers_num; int next_to_use; int * base_buffer; } ;


 int prefetchw (int *) ;

__attribute__((used)) static inline u8 *ena_com_get_next_bounce_buffer(struct ena_com_io_bounce_buffer_control *bounce_buf_ctrl)
{
 u16 size, buffers_num;
 u8 *buf;

 size = bounce_buf_ctrl->buffer_size;
 buffers_num = bounce_buf_ctrl->buffers_num;

 buf = bounce_buf_ctrl->base_buffer +
  (bounce_buf_ctrl->next_to_use++ & (buffers_num - 1)) * size;

 prefetchw(bounce_buf_ctrl->base_buffer +
  (bounce_buf_ctrl->next_to_use & (buffers_num - 1)) * size);

 return buf;
}
