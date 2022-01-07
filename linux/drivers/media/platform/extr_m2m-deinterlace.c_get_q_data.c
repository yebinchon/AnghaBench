
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deinterlace_q_data {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int BUG () ;


 size_t V4L2_M2M_DST ;
 size_t V4L2_M2M_SRC ;
 struct deinterlace_q_data* q_data ;

__attribute__((used)) static struct deinterlace_q_data *get_q_data(enum v4l2_buf_type type)
{
 switch (type) {
 case 128:
  return &q_data[V4L2_M2M_SRC];
 case 129:
  return &q_data[V4L2_M2M_DST];
 default:
  BUG();
 }
 return ((void*)0);
}
