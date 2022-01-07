
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoe_net {int dummy; } ;
struct net {int dummy; } ;


 int BUG_ON (int) ;
 struct pppoe_net* net_generic (struct net*,int ) ;
 int pppoe_net_id ;

__attribute__((used)) static inline struct pppoe_net *pppoe_pernet(struct net *net)
{
 BUG_ON(!net);

 return net_generic(net, pppoe_net_id);
}
