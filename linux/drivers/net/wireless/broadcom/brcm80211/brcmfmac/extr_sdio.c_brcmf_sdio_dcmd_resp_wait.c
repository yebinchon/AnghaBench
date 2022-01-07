
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct brcmf_sdio {int dcmd_resp_wait; } ;


 int DCMD_RESP_TIMEOUT ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int remove_wait_queue (int *,int *) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static int brcmf_sdio_dcmd_resp_wait(struct brcmf_sdio *bus, uint *condition,
         bool *pending)
{
 DECLARE_WAITQUEUE(wait, current);
 int timeout = DCMD_RESP_TIMEOUT;


 add_wait_queue(&bus->dcmd_resp_wait, &wait);
 set_current_state(TASK_INTERRUPTIBLE);

 while (!(*condition) && (!signal_pending(current) && timeout))
  timeout = schedule_timeout(timeout);

 if (signal_pending(current))
  *pending = 1;

 set_current_state(TASK_RUNNING);
 remove_wait_queue(&bus->dcmd_resp_wait, &wait);

 return timeout;
}
