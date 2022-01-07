
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct axienet_option {int opt; int m_or; int reg; } ;
struct axienet_local {int options; } ;


 int axienet_ior (struct axienet_local*,int ) ;
 int axienet_iow (struct axienet_local*,int ,int) ;
 struct axienet_option* axienet_options ;
 struct axienet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void axienet_setoptions(struct net_device *ndev, u32 options)
{
 int reg;
 struct axienet_local *lp = netdev_priv(ndev);
 struct axienet_option *tp = &axienet_options[0];

 while (tp->opt) {
  reg = ((axienet_ior(lp, tp->reg)) & ~(tp->m_or));
  if (options & tp->opt)
   reg |= tp->m_or;
  axienet_iow(lp, tp->reg, reg);
  tp++;
 }

 lp->options |= options;
}
