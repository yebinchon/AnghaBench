
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;


 int V4L2_STD_525_60 ;

__attribute__((used)) static inline unsigned int norm_maxh(v4l2_std_id norm)
{
 return (norm & V4L2_STD_525_60) ? 480 : 576;
}
