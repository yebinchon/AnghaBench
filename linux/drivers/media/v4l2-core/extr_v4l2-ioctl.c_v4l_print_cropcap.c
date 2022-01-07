
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int denominator; int numerator; } ;
struct TYPE_4__ {int top; int left; int height; int width; } ;
struct TYPE_6__ {int top; int left; int height; int width; } ;
struct v4l2_cropcap {TYPE_2__ pixelaspect; TYPE_1__ defrect; TYPE_3__ bounds; int type; } ;


 int pr_cont (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int prt_names (int ,int ) ;
 int v4l2_type_names ;

__attribute__((used)) static void v4l_print_cropcap(const void *arg, bool write_only)
{
 const struct v4l2_cropcap *p = arg;

 pr_cont("type=%s, bounds wxh=%dx%d, x,y=%d,%d, defrect wxh=%dx%d, x,y=%d,%d, pixelaspect %d/%d\n",
  prt_names(p->type, v4l2_type_names),
  p->bounds.width, p->bounds.height,
  p->bounds.left, p->bounds.top,
  p->defrect.width, p->defrect.height,
  p->defrect.left, p->defrect.top,
  p->pixelaspect.numerator, p->pixelaspect.denominator);
}
