
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * dcbnl_ops; } ;


 int qede_dcbnl_ops ;

void qede_set_dcbnl_ops(struct net_device *dev)
{
 dev->dcbnl_ops = &qede_dcbnl_ops;
}
