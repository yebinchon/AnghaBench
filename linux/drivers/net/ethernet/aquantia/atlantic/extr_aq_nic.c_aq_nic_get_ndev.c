
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct aq_nic_s {struct net_device* ndev; } ;



struct net_device *aq_nic_get_ndev(struct aq_nic_s *self)
{
 return self->ndev;
}
