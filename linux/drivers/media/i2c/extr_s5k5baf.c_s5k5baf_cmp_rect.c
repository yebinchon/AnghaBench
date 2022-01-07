
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int dummy; } ;


 int memcmp (struct v4l2_rect const*,struct v4l2_rect const*,int) ;

__attribute__((used)) static bool s5k5baf_cmp_rect(const struct v4l2_rect *r1,
        const struct v4l2_rect *r2)
{
 return !memcmp(r1, r2, sizeof(*r1));
}
