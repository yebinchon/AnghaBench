
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {scalar_t__ height; scalar_t__ width; } ;
struct ov5695_mode {scalar_t__ height; scalar_t__ width; } ;


 int abs (scalar_t__) ;

__attribute__((used)) static int ov5695_get_reso_dist(const struct ov5695_mode *mode,
    struct v4l2_mbus_framefmt *framefmt)
{
 return abs(mode->width - framefmt->width) +
        abs(mode->height - framefmt->height);
}
