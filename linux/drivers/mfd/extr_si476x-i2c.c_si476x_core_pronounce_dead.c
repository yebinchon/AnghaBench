
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_core {int tuning; int stc; int command; int cts; int rds_read_queue; int is_alive; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int atomic_set (int *,int) ;
 int dev_info (int *,char*) ;
 int wake_up (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void si476x_core_pronounce_dead(struct si476x_core *core)
{
 dev_info(&core->client->dev, "Core device is dead.\n");

 atomic_set(&core->is_alive, 0);


 wake_up_interruptible(&core->rds_read_queue);

 atomic_set(&core->cts, 1);
 wake_up(&core->command);

 atomic_set(&core->stc, 1);
 wake_up(&core->tuning);
}
