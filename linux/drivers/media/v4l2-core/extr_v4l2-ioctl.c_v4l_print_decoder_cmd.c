
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pts; } ;
struct TYPE_3__ {int format; int speed; } ;
struct v4l2_decoder_cmd {scalar_t__ cmd; TYPE_2__ stop; TYPE_1__ start; int flags; } ;


 scalar_t__ V4L2_DEC_CMD_START ;
 scalar_t__ V4L2_DEC_CMD_STOP ;
 int pr_cont (char*,scalar_t__,int ) ;
 int pr_info (char*,int ,...) ;

__attribute__((used)) static void v4l_print_decoder_cmd(const void *arg, bool write_only)
{
 const struct v4l2_decoder_cmd *p = arg;

 pr_cont("cmd=%d, flags=0x%x\n", p->cmd, p->flags);

 if (p->cmd == V4L2_DEC_CMD_START)
  pr_info("speed=%d, format=%u\n",
    p->start.speed, p->start.format);
 else if (p->cmd == V4L2_DEC_CMD_STOP)
  pr_info("pts=%llu\n", p->stop.pts);
}
