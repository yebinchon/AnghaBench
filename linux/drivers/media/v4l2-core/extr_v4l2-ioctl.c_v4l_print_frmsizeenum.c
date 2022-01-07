
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int step_height; int step_width; int max_height; int max_width; int min_height; int min_width; } ;
struct TYPE_3__ {int height; int width; } ;
struct v4l2_frmsizeenum {int pixel_format; int type; TYPE_2__ stepwise; TYPE_1__ discrete; int index; } ;





 int pr_cont (char*,...) ;

__attribute__((used)) static void v4l_print_frmsizeenum(const void *arg, bool write_only)
{
 const struct v4l2_frmsizeenum *p = arg;

 pr_cont("index=%u, pixelformat=%c%c%c%c, type=%u",
   p->index,
   (p->pixel_format & 0xff),
   (p->pixel_format >> 8) & 0xff,
   (p->pixel_format >> 16) & 0xff,
   (p->pixel_format >> 24) & 0xff,
   p->type);
 switch (p->type) {
 case 129:
  pr_cont(", wxh=%ux%u\n",
   p->discrete.width, p->discrete.height);
  break;
 case 128:
  pr_cont(", min=%ux%u, max=%ux%u, step=%ux%u\n",
    p->stepwise.min_width,
    p->stepwise.min_height,
    p->stepwise.max_width,
    p->stepwise.max_height,
    p->stepwise.step_width,
    p->stepwise.step_height);
  break;
 case 130:

 default:
  pr_cont("\n");
  break;
 }
}
