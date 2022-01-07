
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct net_device {int base_addr; } ;
struct de4x5_private {int media; int timer; scalar_t__ tcount; int c_media; } ;


 int AUTO ;
 int DE4X5_MFC ;
 int INIT ;
 int de4x5_ast (int *) ;
 int disable_ast (struct net_device*) ;
 int inl (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
autoconf_media(struct net_device *dev)
{
 struct de4x5_private *lp = netdev_priv(dev);
 u_long iobase = dev->base_addr;

 disable_ast(dev);

 lp->c_media = AUTO;
 inl(DE4X5_MFC);
 lp->media = INIT;
 lp->tcount = 0;

 de4x5_ast(&lp->timer);

 return lp->media;
}
