
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int vortex_debug ;

__attribute__((used)) static u32 vortex_get_msglevel(struct net_device *dev)
{
 return vortex_debug;
}
