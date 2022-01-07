
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int flow_count; } ;
struct tun_flow_entry {int hash_link; int queue_index; int rxhash; } ;


 int KERN_INFO ;
 int hlist_del_rcu (int *) ;
 int kfree_rcu (struct tun_flow_entry*,int ) ;
 int rcu ;
 int tun_debug (int ,struct tun_struct*,char*,int ,int ) ;

__attribute__((used)) static void tun_flow_delete(struct tun_struct *tun, struct tun_flow_entry *e)
{
 tun_debug(KERN_INFO, tun, "delete flow: hash %u index %u\n",
    e->rxhash, e->queue_index);
 hlist_del_rcu(&e->hash_link);
 kfree_rcu(e, rcu);
 --tun->flow_count;
}
