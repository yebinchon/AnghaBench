
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int cxgb4_dcb_cleanup_apps (struct net_device*) ;
 int cxgb4_dcb_state_init (struct net_device*) ;

void cxgb4_dcb_reset(struct net_device *dev)
{
 cxgb4_dcb_cleanup_apps(dev);
 cxgb4_dcb_state_init(dev);
}
