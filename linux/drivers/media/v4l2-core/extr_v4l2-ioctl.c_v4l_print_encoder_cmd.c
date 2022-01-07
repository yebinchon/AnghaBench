
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_encoder_cmd {int flags; int cmd; } ;


 int pr_cont (char*,int ,int ) ;

__attribute__((used)) static void v4l_print_encoder_cmd(const void *arg, bool write_only)
{
 const struct v4l2_encoder_cmd *p = arg;

 pr_cont("cmd=%d, flags=0x%x\n",
   p->cmd, p->flags);
}
