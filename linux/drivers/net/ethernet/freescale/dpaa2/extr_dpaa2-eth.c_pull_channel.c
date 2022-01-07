
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dequeue_portal_busy; int pull_err; } ;
struct dpaa2_eth_channel {TYPE_1__ stats; int store; int ch_id; int dpio; } ;


 int EBUSY ;
 int cpu_relax () ;
 int dpaa2_io_service_pull_channel (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pull_channel(struct dpaa2_eth_channel *ch)
{
 int err;
 int dequeues = -1;


 do {
  err = dpaa2_io_service_pull_channel(ch->dpio, ch->ch_id,
          ch->store);
  dequeues++;
  cpu_relax();
 } while (err == -EBUSY);

 ch->stats.dequeue_portal_busy += dequeues;
 if (unlikely(err))
  ch->stats.pull_err++;

 return err;
}
