
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int E2P_DATA ;
 int ID_REV ;
 int MAC_CR ;
 int WUCSR ;

__attribute__((used)) static int smsc911x_ethtool_getregslen(struct net_device *dev)
{
 return (((E2P_DATA - ID_REV) / 4 + 1) + (WUCSR - MAC_CR) + 1 + 32) *
     sizeof(u32);
}
