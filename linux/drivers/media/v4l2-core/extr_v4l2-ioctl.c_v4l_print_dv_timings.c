
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int standards; int il_vbackporch; int il_vsync; int il_vfrontporch; int vbackporch; int vsync; int vfrontporch; int hbackporch; int hsync; int hfrontporch; int polarities; int height; int width; int pixelclock; int interlaced; } ;
struct v4l2_dv_timings {int type; TYPE_1__ bt; } ;



 int pr_cont (char*,int,...) ;

__attribute__((used)) static void v4l_print_dv_timings(const void *arg, bool write_only)
{
 const struct v4l2_dv_timings *p = arg;

 switch (p->type) {
 case 128:
  pr_cont("type=bt-656/1120, interlaced=%u, pixelclock=%llu, width=%u, height=%u, polarities=0x%x, hfrontporch=%u, hsync=%u, hbackporch=%u, vfrontporch=%u, vsync=%u, vbackporch=%u, il_vfrontporch=%u, il_vsync=%u, il_vbackporch=%u, standards=0x%x, flags=0x%x\n",
    p->bt.interlaced, p->bt.pixelclock,
    p->bt.width, p->bt.height,
    p->bt.polarities, p->bt.hfrontporch,
    p->bt.hsync, p->bt.hbackporch,
    p->bt.vfrontporch, p->bt.vsync,
    p->bt.vbackporch, p->bt.il_vfrontporch,
    p->bt.il_vsync, p->bt.il_vbackporch,
    p->bt.standards, p->bt.flags);
  break;
 default:
  pr_cont("type=%d\n", p->type);
  break;
 }
}
