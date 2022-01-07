
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {scalar_t__ xdp_prog; } ;


 int nr_cpu_ids ;

__attribute__((used)) static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
{
 return adapter->xdp_prog ? nr_cpu_ids : 0;
}
