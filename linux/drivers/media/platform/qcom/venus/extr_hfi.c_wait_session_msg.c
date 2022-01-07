
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {scalar_t__ error; int done; } ;


 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ HFI_ERR_NONE ;
 int TIMEOUT ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int wait_session_msg(struct venus_inst *inst)
{
 int ret;

 ret = wait_for_completion_timeout(&inst->done, TIMEOUT);
 if (!ret)
  return -ETIMEDOUT;

 if (inst->error != HFI_ERR_NONE)
  return -EIO;

 return 0;
}
