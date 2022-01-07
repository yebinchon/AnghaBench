
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int fcccp; int ep; int fccp; } ;
struct fs_enet_private {TYPE_1__ fcc; } ;
typedef int fcc_t ;
typedef int fcc_enet_t ;


 int EINVAL ;
 int memcpy_fromio (void*,int ,int) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int get_regs(struct net_device *dev, void *p, int *sizep)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 if (*sizep < sizeof(fcc_t) + sizeof(fcc_enet_t) + 1)
  return -EINVAL;

 memcpy_fromio(p, fep->fcc.fccp, sizeof(fcc_t));
 p = (char *)p + sizeof(fcc_t);

 memcpy_fromio(p, fep->fcc.ep, sizeof(fcc_enet_t));
 p = (char *)p + sizeof(fcc_enet_t);

 memcpy_fromio(p, fep->fcc.fcccp, 1);
 return 0;
}
