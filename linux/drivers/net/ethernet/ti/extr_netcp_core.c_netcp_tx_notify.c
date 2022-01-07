
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int tx_napi; int tx_compl_q; } ;


 int knav_queue_disable_notify (int ) ;
 int napi_schedule (int *) ;

__attribute__((used)) static void netcp_tx_notify(void *arg)
{
 struct netcp_intf *netcp = arg;

 knav_queue_disable_notify(netcp->tx_compl_q);
 napi_schedule(&netcp->tx_napi);
}
