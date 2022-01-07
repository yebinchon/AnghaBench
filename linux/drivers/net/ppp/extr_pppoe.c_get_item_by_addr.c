
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remote; int sid; int dev; } ;
struct TYPE_4__ {TYPE_1__ pppoe; } ;
struct sockaddr_pppox {TYPE_2__ sa_addr; } ;
struct pppox_sock {int dummy; } ;
struct pppoe_net {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;


 struct net_device* dev_get_by_name_rcu (struct net*,int ) ;
 struct pppox_sock* get_item (struct pppoe_net*,int ,int ,int) ;
 struct pppoe_net* pppoe_pernet (struct net*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline struct pppox_sock *get_item_by_addr(struct net *net,
      struct sockaddr_pppox *sp)
{
 struct net_device *dev;
 struct pppoe_net *pn;
 struct pppox_sock *pppox_sock = ((void*)0);

 int ifindex;

 rcu_read_lock();
 dev = dev_get_by_name_rcu(net, sp->sa_addr.pppoe.dev);
 if (dev) {
  ifindex = dev->ifindex;
  pn = pppoe_pernet(net);
  pppox_sock = get_item(pn, sp->sa_addr.pppoe.sid,
    sp->sa_addr.pppoe.remote, ifindex);
 }
 rcu_read_unlock();
 return pppox_sock;
}
