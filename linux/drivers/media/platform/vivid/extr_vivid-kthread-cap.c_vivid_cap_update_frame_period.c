
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int denominator; scalar_t__ numerator; } ;
struct vivid_dev {scalar_t__ field_cap; int cap_frame_eof_offset; int cap_frame_period; TYPE_1__ timeperframe_vid_cap; } ;


 scalar_t__ V4L2_FIELD_ALTERNATE ;
 scalar_t__ WARN_ON (int) ;
 int do_div (int,int) ;

__attribute__((used)) static void vivid_cap_update_frame_period(struct vivid_dev *dev)
{
 u64 f_period;

 f_period = (u64)dev->timeperframe_vid_cap.numerator * 1000000000;
 if (WARN_ON(dev->timeperframe_vid_cap.denominator == 0))
  dev->timeperframe_vid_cap.denominator = 1;
 do_div(f_period, dev->timeperframe_vid_cap.denominator);
 if (dev->field_cap == V4L2_FIELD_ALTERNATE)
  f_period >>= 1;




 dev->cap_frame_eof_offset = f_period * 9;
 do_div(dev->cap_frame_eof_offset, 10);
 dev->cap_frame_period = f_period;
}
