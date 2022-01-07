
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int ne2k_flags; } ;


 int EOPNOTSUPP ;
 int HOLTEK_FDX ;
 int REALTEK_FDX ;
 TYPE_1__ ei_status ;
 int set_holtek_fdx (struct net_device*) ;
 int set_realtek_fdx (struct net_device*) ;

__attribute__((used)) static int ne2k_pci_set_fdx(struct net_device *dev)
{
 if (ei_status.ne2k_flags & REALTEK_FDX)
  return set_realtek_fdx(dev);
 else if (ei_status.ne2k_flags & HOLTEK_FDX)
  return set_holtek_fdx(dev);

 return -EOPNOTSUPP;
}
