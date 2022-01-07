
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {int pdev; } ;


 int IORESOURCE_MEM ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 struct resource* platform_get_resource (int ,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int fec_enet_get_regs_len(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 struct resource *r;
 int s = 0;

 r = platform_get_resource(fep->pdev, IORESOURCE_MEM, 0);
 if (r)
  s = resource_size(r);

 return s;
}
