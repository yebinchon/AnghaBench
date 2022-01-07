
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoe_net {int hash_lock; } ;
typedef int __be16 ;


 int __delete_item (struct pppoe_net*,int ,char*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void delete_item(struct pppoe_net *pn, __be16 sid,
     char *addr, int ifindex)
{
 write_lock_bh(&pn->hash_lock);
 __delete_item(pn, sid, addr, ifindex);
 write_unlock_bh(&pn->hash_lock);
}
