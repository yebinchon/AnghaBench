
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct tun_struct {unsigned long ageing_time; scalar_t__ flow_count; int lock; int flow_gc_timer; struct hlist_head* flows; } ;
struct tun_flow_entry {scalar_t__ updated; int rps_rxhash; int queue_index; } ;
struct tun_file {scalar_t__ queue_index; } ;
struct hlist_head {int dummy; } ;


 scalar_t__ MAX_TAP_FLOWS ;
 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (int ,scalar_t__) ;
 scalar_t__ jiffies ;
 scalar_t__ likely (struct tun_flow_entry*) ;
 int mod_timer (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int round_jiffies_up (scalar_t__) ;
 int sock_rps_record_flow_hash (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_pending (int *) ;
 int tun_flow_create (struct tun_struct*,struct hlist_head*,int ,scalar_t__) ;
 struct tun_flow_entry* tun_flow_find (struct hlist_head*,int ) ;
 size_t tun_hashfn (int ) ;

__attribute__((used)) static void tun_flow_update(struct tun_struct *tun, u32 rxhash,
       struct tun_file *tfile)
{
 struct hlist_head *head;
 struct tun_flow_entry *e;
 unsigned long delay = tun->ageing_time;
 u16 queue_index = tfile->queue_index;

 head = &tun->flows[tun_hashfn(rxhash)];

 rcu_read_lock();

 e = tun_flow_find(head, rxhash);
 if (likely(e)) {

  if (READ_ONCE(e->queue_index) != queue_index)
   WRITE_ONCE(e->queue_index, queue_index);
  if (e->updated != jiffies)
   e->updated = jiffies;
  sock_rps_record_flow_hash(e->rps_rxhash);
 } else {
  spin_lock_bh(&tun->lock);
  if (!tun_flow_find(head, rxhash) &&
      tun->flow_count < MAX_TAP_FLOWS)
   tun_flow_create(tun, head, rxhash, queue_index);

  if (!timer_pending(&tun->flow_gc_timer))
   mod_timer(&tun->flow_gc_timer,
      round_jiffies_up(jiffies + delay));
  spin_unlock_bh(&tun->lock);
 }

 rcu_read_unlock();
}
