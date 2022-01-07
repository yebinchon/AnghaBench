
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppox_sock {int dummy; } ;
struct pppoe_net {int hash_lock; } ;
typedef int __be16 ;


 struct pppox_sock* __get_item (struct pppoe_net*,int ,unsigned char*,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sk_pppox (struct pppox_sock*) ;
 int sock_hold (int ) ;

__attribute__((used)) static inline struct pppox_sock *get_item(struct pppoe_net *pn, __be16 sid,
     unsigned char *addr, int ifindex)
{
 struct pppox_sock *po;

 read_lock_bh(&pn->hash_lock);
 po = __get_item(pn, sid, addr, ifindex);
 if (po)
  sock_hold(sk_pppox(po));
 read_unlock_bh(&pn->hash_lock);

 return po;
}
