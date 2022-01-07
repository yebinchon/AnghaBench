
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int expires; } ;
struct proto {int state; TYPE_1__ timer; int dev; int pid; int restart_counter; } ;
struct ppp {int last_pong; int keepalive_timeout; int keepalive_interval; int lock; int echo_id; int seq; } ;




 int HZ ;
 int LCP_ECHO_REQ ;

 int PID_LCP ;

 int START ;
 int STOP ;

 int TO_BAD ;
 int TO_GOOD ;
 int add_timer (TYPE_1__*) ;
 struct proto* from_timer (int ,struct timer_list*,int ) ;
 struct ppp* get_ppp (int ) ;
 int jiffies ;
 int netdev_info (int ,char*) ;
 int netif_carrier_ok (int ) ;
 int ppp_cp_event (int ,int ,int ,int ,int ,int ,int *) ;
 int ppp_tx_cp (int ,int ,int ,int ,int ,int *) ;
 int ppp_tx_flush () ;
 struct proto* proto ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_after (int,int) ;
 int timer ;

__attribute__((used)) static void ppp_timer(struct timer_list *t)
{
 struct proto *proto = from_timer(proto, t, timer);
 struct ppp *ppp = get_ppp(proto->dev);
 unsigned long flags;

 spin_lock_irqsave(&ppp->lock, flags);
 switch (proto->state) {
 case 128:
 case 129:
 case 132:
 case 131:
  if (proto->restart_counter) {
   ppp_cp_event(proto->dev, proto->pid, TO_GOOD, 0, 0,
         0, ((void*)0));
   proto->restart_counter--;
  } else if (netif_carrier_ok(proto->dev))
   ppp_cp_event(proto->dev, proto->pid, TO_GOOD, 0, 0,
         0, ((void*)0));
  else
   ppp_cp_event(proto->dev, proto->pid, TO_BAD, 0, 0,
         0, ((void*)0));
  break;

 case 130:
  if (proto->pid != PID_LCP)
   break;
  if (time_after(jiffies, ppp->last_pong +
          ppp->keepalive_timeout * HZ)) {
   netdev_info(proto->dev, "Link down\n");
   ppp_cp_event(proto->dev, PID_LCP, STOP, 0, 0, 0, ((void*)0));
   ppp_cp_event(proto->dev, PID_LCP, START, 0, 0, 0, ((void*)0));
  } else {
   ppp->echo_id = ++ppp->seq;
   ppp_tx_cp(proto->dev, PID_LCP, LCP_ECHO_REQ,
      ppp->echo_id, 0, ((void*)0));
   proto->timer.expires = jiffies +
    ppp->keepalive_interval * HZ;
   add_timer(&proto->timer);
  }
  break;
 }
 spin_unlock_irqrestore(&ppp->lock, flags);
 ppp_tx_flush();
}
