
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cxgb4_lld_info {int nports; struct net_device** ports; } ;



__attribute__((used)) static bool
cxgb_our_interface(struct cxgb4_lld_info *lldi,
     struct net_device *(*get_real_dev)(struct net_device *),
     struct net_device *egress_dev)
{
 int i;

 egress_dev = get_real_dev(egress_dev);
 for (i = 0; i < lldi->nports; i++)
  if (lldi->ports[i] == egress_dev)
   return 1;
 return 0;
}
