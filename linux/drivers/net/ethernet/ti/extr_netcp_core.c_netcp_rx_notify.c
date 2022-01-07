
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int rx_napi; int rx_queue; } ;


 int knav_queue_disable_notify (int ) ;
 int napi_schedule (int *) ;

__attribute__((used)) static void netcp_rx_notify(void *arg)
{
 struct netcp_intf *netcp = arg;

 knav_queue_disable_notify(netcp->rx_queue);
 napi_schedule(&netcp->rx_napi);
}
