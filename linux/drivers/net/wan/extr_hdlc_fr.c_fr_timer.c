
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct frad_state {struct net_device* dev; } ;
typedef int hdlc_device ;
struct TYPE_6__ {void* expires; } ;
struct TYPE_4__ {int t392; int n393; int n392; int t391; scalar_t__ dce; } ;
struct TYPE_5__ {int request; int last_errors; int reliable; scalar_t__ n391cnt; TYPE_3__ timer; TYPE_1__ settings; void* last_poll; } ;


 int HZ ;
 int add_timer (TYPE_3__*) ;
 int * dev_to_hdlc (struct net_device*) ;
 int fr_lmi_send (struct net_device*,int) ;
 int fr_set_link_state (int,struct net_device*) ;
 struct frad_state* from_timer (int ,struct timer_list*,int ) ;
 void* jiffies ;
 int netdev_info (struct net_device*,char*,...) ;
 struct frad_state* st ;
 TYPE_2__* state (int *) ;
 scalar_t__ time_before (void*,void*) ;
 int timer ;

__attribute__((used)) static void fr_timer(struct timer_list *t)
{
 struct frad_state *st = from_timer(st, t, timer);
 struct net_device *dev = st->dev;
 hdlc_device *hdlc = dev_to_hdlc(dev);
 int i, cnt = 0, reliable;
 u32 list;

 if (state(hdlc)->settings.dce) {
  reliable = state(hdlc)->request &&
   time_before(jiffies, state(hdlc)->last_poll +
        state(hdlc)->settings.t392 * HZ);
  state(hdlc)->request = 0;
 } else {
  state(hdlc)->last_errors <<= 1;
  if (state(hdlc)->request) {
   if (state(hdlc)->reliable)
    netdev_info(dev, "No LMI status reply received\n");
   state(hdlc)->last_errors |= 1;
  }

  list = state(hdlc)->last_errors;
  for (i = 0; i < state(hdlc)->settings.n393; i++, list >>= 1)
   cnt += (list & 1);

  reliable = (cnt < state(hdlc)->settings.n392);
 }

 if (state(hdlc)->reliable != reliable) {
  netdev_info(dev, "Link %sreliable\n", reliable ? "" : "un");
  fr_set_link_state(reliable, dev);
 }

 if (state(hdlc)->settings.dce)
  state(hdlc)->timer.expires = jiffies +
   state(hdlc)->settings.t392 * HZ;
 else {
  if (state(hdlc)->n391cnt)
   state(hdlc)->n391cnt--;

  fr_lmi_send(dev, state(hdlc)->n391cnt == 0);

  state(hdlc)->last_poll = jiffies;
  state(hdlc)->request = 1;
  state(hdlc)->timer.expires = jiffies +
   state(hdlc)->settings.t391 * HZ;
 }

 add_timer(&state(hdlc)->timer);
}
