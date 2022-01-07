
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tun_struct {int flow_count; } ;
struct tun_flow_entry {int hash_link; struct tun_struct* tun; int queue_index; scalar_t__ rps_rxhash; int rxhash; int updated; } ;
struct hlist_head {int dummy; } ;


 int GFP_ATOMIC ;
 int KERN_INFO ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 int jiffies ;
 struct tun_flow_entry* kmalloc (int,int ) ;
 int tun_debug (int ,struct tun_struct*,char*,int ,int ) ;

__attribute__((used)) static struct tun_flow_entry *tun_flow_create(struct tun_struct *tun,
           struct hlist_head *head,
           u32 rxhash, u16 queue_index)
{
 struct tun_flow_entry *e = kmalloc(sizeof(*e), GFP_ATOMIC);

 if (e) {
  tun_debug(KERN_INFO, tun, "create flow: hash %u index %u\n",
     rxhash, queue_index);
  e->updated = jiffies;
  e->rxhash = rxhash;
  e->rps_rxhash = 0;
  e->queue_index = queue_index;
  e->tun = tun;
  hlist_add_head_rcu(&e->hash_link, head);
  ++tun->flow_count;
 }
 return e;
}
