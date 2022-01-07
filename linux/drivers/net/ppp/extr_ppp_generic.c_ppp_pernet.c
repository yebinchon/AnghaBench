
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_net {int dummy; } ;
struct net {int dummy; } ;


 int BUG_ON (int) ;
 struct ppp_net* net_generic (struct net*,int ) ;
 int ppp_net_id ;

__attribute__((used)) static inline struct ppp_net *ppp_pernet(struct net *net)
{
 BUG_ON(!net);

 return net_generic(net, ppp_net_id);
}
