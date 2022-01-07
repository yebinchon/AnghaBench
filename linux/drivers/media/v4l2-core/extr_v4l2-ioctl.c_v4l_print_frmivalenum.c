
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int denominator; int numerator; } ;
struct TYPE_8__ {int denominator; int numerator; } ;
struct TYPE_7__ {int denominator; int numerator; } ;
struct TYPE_10__ {TYPE_4__ step; TYPE_3__ max; TYPE_2__ min; } ;
struct TYPE_6__ {int denominator; int numerator; } ;
struct v4l2_frmivalenum {int pixel_format; int type; TYPE_5__ stepwise; TYPE_1__ discrete; int height; int width; int index; } ;





 int pr_cont (char*,...) ;

__attribute__((used)) static void v4l_print_frmivalenum(const void *arg, bool write_only)
{
 const struct v4l2_frmivalenum *p = arg;

 pr_cont("index=%u, pixelformat=%c%c%c%c, wxh=%ux%u, type=%u",
   p->index,
   (p->pixel_format & 0xff),
   (p->pixel_format >> 8) & 0xff,
   (p->pixel_format >> 16) & 0xff,
   (p->pixel_format >> 24) & 0xff,
   p->width, p->height, p->type);
 switch (p->type) {
 case 129:
  pr_cont(", fps=%d/%d\n",
    p->discrete.numerator,
    p->discrete.denominator);
  break;
 case 128:
  pr_cont(", min=%d/%d, max=%d/%d, step=%d/%d\n",
    p->stepwise.min.numerator,
    p->stepwise.min.denominator,
    p->stepwise.max.numerator,
    p->stepwise.max.denominator,
    p->stepwise.step.numerator,
    p->stepwise.step.denominator);
  break;
 case 130:

 default:
  pr_cont("\n");
  break;
 }
}
