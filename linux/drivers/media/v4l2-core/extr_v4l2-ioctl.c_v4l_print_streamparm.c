
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int denominator; int numerator; } ;
struct v4l2_outputparm {int writebuffers; int extendedmode; TYPE_3__ timeperframe; int outputmode; int capability; } ;
struct TYPE_4__ {int denominator; int numerator; } ;
struct v4l2_captureparm {int readbuffers; int extendedmode; TYPE_1__ timeperframe; int capturemode; int capability; } ;
struct TYPE_5__ {struct v4l2_outputparm output; struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int pr_cont (char*,...) ;
 int prt_names (scalar_t__,int ) ;
 int v4l2_type_names ;

__attribute__((used)) static void v4l_print_streamparm(const void *arg, bool write_only)
{
 const struct v4l2_streamparm *p = arg;

 pr_cont("type=%s", prt_names(p->type, v4l2_type_names));

 if (p->type == V4L2_BUF_TYPE_VIDEO_CAPTURE ||
     p->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  const struct v4l2_captureparm *c = &p->parm.capture;

  pr_cont(", capability=0x%x, capturemode=0x%x, timeperframe=%d/%d, extendedmode=%d, readbuffers=%d\n",
   c->capability, c->capturemode,
   c->timeperframe.numerator, c->timeperframe.denominator,
   c->extendedmode, c->readbuffers);
 } else if (p->type == V4L2_BUF_TYPE_VIDEO_OUTPUT ||
     p->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  const struct v4l2_outputparm *c = &p->parm.output;

  pr_cont(", capability=0x%x, outputmode=0x%x, timeperframe=%d/%d, extendedmode=%d, writebuffers=%d\n",
   c->capability, c->outputmode,
   c->timeperframe.numerator, c->timeperframe.denominator,
   c->extendedmode, c->writebuffers);
 } else {
  pr_cont("\n");
 }
}
