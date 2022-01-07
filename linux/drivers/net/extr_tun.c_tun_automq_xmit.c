
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int numqueues; int * flows; } ;
struct tun_flow_entry {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int __u32 ;


 int __skb_get_hash_symmetric (struct sk_buff*) ;
 int rps_needed ;
 scalar_t__ static_branch_unlikely (int *) ;
 struct tun_flow_entry* tun_flow_find (int *,int ) ;
 int tun_flow_save_rps_rxhash (struct tun_flow_entry*,int ) ;
 size_t tun_hashfn (int ) ;

__attribute__((used)) static void tun_automq_xmit(struct tun_struct *tun, struct sk_buff *skb)
{
}
