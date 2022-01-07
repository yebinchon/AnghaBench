
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_device {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;


 int XVIP_ACTIVE_HSIZE_SHIFT ;
 int XVIP_ACTIVE_SIZE ;
 int XVIP_ACTIVE_VSIZE_SHIFT ;
 int xvip_write (struct xvip_device*,int ,int) ;

__attribute__((used)) static inline void xvip_set_frame_size(struct xvip_device *xvip,
           const struct v4l2_mbus_framefmt *format)
{
 xvip_write(xvip, XVIP_ACTIVE_SIZE,
     (format->height << XVIP_ACTIVE_VSIZE_SHIFT) |
     (format->width << XVIP_ACTIVE_HSIZE_SHIFT));
}
