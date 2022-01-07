
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct tun_struct {int * flows; int numqueues; } ;
struct tun_flow_entry {int queue_index; } ;
struct sk_buff {int dummy; } ;


 int READ_ONCE (int ) ;
 int __skb_get_hash_symmetric (struct sk_buff*) ;
 struct tun_flow_entry* tun_flow_find (int *,int) ;
 int tun_flow_save_rps_rxhash (struct tun_flow_entry*,int) ;
 size_t tun_hashfn (int) ;

__attribute__((used)) static u16 tun_automq_select_queue(struct tun_struct *tun, struct sk_buff *skb)
{
 struct tun_flow_entry *e;
 u32 txq = 0;
 u32 numqueues = 0;

 numqueues = READ_ONCE(tun->numqueues);

 txq = __skb_get_hash_symmetric(skb);
 e = tun_flow_find(&tun->flows[tun_hashfn(txq)], txq);
 if (e) {
  tun_flow_save_rps_rxhash(e, txq);
  txq = e->queue_index;
 } else {

  txq = ((u64)txq * numqueues) >> 32;
 }

 return txq;
}
