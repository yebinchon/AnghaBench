
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int (* gro_complete ) (struct sk_buff*,int) ;} ;
struct packet_offload {TYPE_1__ callbacks; } ;
struct genevehdr {int proto_type; } ;
typedef int __be16 ;


 int ENOSYS ;
 int geneve_hlen (struct genevehdr*) ;
 struct packet_offload* gro_find_complete_by_type (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_set_inner_mac_header (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*,int) ;

__attribute__((used)) static int geneve_gro_complete(struct sock *sk, struct sk_buff *skb,
          int nhoff)
{
 struct genevehdr *gh;
 struct packet_offload *ptype;
 __be16 type;
 int gh_len;
 int err = -ENOSYS;

 gh = (struct genevehdr *)(skb->data + nhoff);
 gh_len = geneve_hlen(gh);
 type = gh->proto_type;

 rcu_read_lock();
 ptype = gro_find_complete_by_type(type);
 if (ptype)
  err = ptype->callbacks.gro_complete(skb, nhoff + gh_len);

 rcu_read_unlock();

 skb_set_inner_mac_header(skb, nhoff + gh_len);

 return err;
}
