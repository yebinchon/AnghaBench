
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int el3_debug ;

__attribute__((used)) static u32 el3_get_msglevel(struct net_device *dev)
{
 return el3_debug;
}
