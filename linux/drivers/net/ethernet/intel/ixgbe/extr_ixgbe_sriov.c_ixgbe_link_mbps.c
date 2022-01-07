
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int link_speed; } ;






int ixgbe_link_mbps(struct ixgbe_adapter *adapter)
{
 switch (adapter->link_speed) {
 case 130:
  return 100;
 case 128:
  return 1000;
 case 129:
  return 10000;
 default:
  return 0;
 }
}
