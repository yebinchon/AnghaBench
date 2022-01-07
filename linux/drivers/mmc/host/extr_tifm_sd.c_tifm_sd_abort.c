
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct tifm_sd {TYPE_3__* dev; int cmd_flags; TYPE_2__* req; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_1__* cmd; } ;
struct TYPE_4__ {int opcode; } ;


 int dev_name (int *) ;
 struct tifm_sd* from_timer (int ,struct timer_list*,int ) ;
 struct tifm_sd* host ;
 int pr_err (char*,int ,int ,int ) ;
 int tifm_eject (TYPE_3__*) ;
 int timer ;

__attribute__((used)) static void tifm_sd_abort(struct timer_list *t)
{
 struct tifm_sd *host = from_timer(host, t, timer);

 pr_err("%s : card failed to respond for a long period of time "
        "(%x, %x)\n",
        dev_name(&host->dev->dev), host->req->cmd->opcode, host->cmd_flags);

 tifm_eject(host->dev);
}
