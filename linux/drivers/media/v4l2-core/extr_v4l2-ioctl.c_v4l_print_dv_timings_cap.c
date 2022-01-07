
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capabilities; int standards; int max_pixelclock; int min_pixelclock; int max_height; int min_height; int max_width; int min_width; } ;
struct v4l2_dv_timings_cap {int type; TYPE_1__ bt; } ;



 int pr_cont (char*,int,...) ;

__attribute__((used)) static void v4l_print_dv_timings_cap(const void *arg, bool write_only)
{
 const struct v4l2_dv_timings_cap *p = arg;

 switch (p->type) {
 case 128:
  pr_cont("type=bt-656/1120, width=%u-%u, height=%u-%u, pixelclock=%llu-%llu, standards=0x%x, capabilities=0x%x\n",
   p->bt.min_width, p->bt.max_width,
   p->bt.min_height, p->bt.max_height,
   p->bt.min_pixelclock, p->bt.max_pixelclock,
   p->bt.standards, p->bt.capabilities);
  break;
 default:
  pr_cont("type=%u\n", p->type);
  break;
 }
}
