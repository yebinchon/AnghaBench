
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stfsm {scalar_t__ reset_por; TYPE_1__* info; scalar_t__ reset_signal; } ;
struct TYPE_2__ {int flags; } ;


 int FLASH_FLAG_RESET ;

__attribute__((used)) static bool stfsm_can_handle_soc_reset(struct stfsm *fsm)
{

 if (fsm->reset_signal && fsm->info->flags & FLASH_FLAG_RESET)
  return 1;


 if (fsm->reset_por)
  return 1;


 return 0;
}
