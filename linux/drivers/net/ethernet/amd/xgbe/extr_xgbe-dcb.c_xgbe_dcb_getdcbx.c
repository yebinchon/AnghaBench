
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int DCB_CAP_DCBX_HOST ;
 int DCB_CAP_DCBX_VER_IEEE ;

__attribute__((used)) static u8 xgbe_dcb_getdcbx(struct net_device *netdev)
{
 return DCB_CAP_DCBX_HOST | DCB_CAP_DCBX_VER_IEEE;
}
