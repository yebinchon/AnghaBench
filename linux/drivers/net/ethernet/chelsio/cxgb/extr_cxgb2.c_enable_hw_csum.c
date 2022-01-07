
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adapter {int tp; TYPE_2__* port; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int hw_features; } ;


 int NETIF_F_TSO ;
 int t1_tp_set_ip_checksum_offload (int ,int) ;
 int t1_tp_set_tcp_checksum_offload (int ,int) ;

__attribute__((used)) static void enable_hw_csum(struct adapter *adapter)
{
 if (adapter->port[0].dev->hw_features & NETIF_F_TSO)
  t1_tp_set_ip_checksum_offload(adapter->tp, 1);
 t1_tp_set_tcp_checksum_offload(adapter->tp, 1);
}
