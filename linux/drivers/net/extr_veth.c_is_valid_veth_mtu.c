
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_MAX_MTU ;
 int ETH_MIN_MTU ;

__attribute__((used)) static int is_valid_veth_mtu(int mtu)
{
 return mtu >= ETH_MIN_MTU && mtu <= ETH_MAX_MTU;
}
