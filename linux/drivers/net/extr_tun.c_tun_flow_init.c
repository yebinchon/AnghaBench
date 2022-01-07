
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {scalar_t__ ageing_time; int flow_gc_timer; int * flows; } ;


 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ TUN_FLOW_EXPIRE ;
 int TUN_NUM_FLOW_ENTRIES ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies_up (scalar_t__) ;
 int timer_setup (int *,int ,int ) ;
 int tun_flow_cleanup ;

__attribute__((used)) static void tun_flow_init(struct tun_struct *tun)
{
 int i;

 for (i = 0; i < TUN_NUM_FLOW_ENTRIES; i++)
  INIT_HLIST_HEAD(&tun->flows[i]);

 tun->ageing_time = TUN_FLOW_EXPIRE;
 timer_setup(&tun->flow_gc_timer, tun_flow_cleanup, 0);
 mod_timer(&tun->flow_gc_timer,
    round_jiffies_up(jiffies + tun->ageing_time));
}
