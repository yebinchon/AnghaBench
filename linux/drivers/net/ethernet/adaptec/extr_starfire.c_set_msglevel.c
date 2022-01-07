
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int debug ;

__attribute__((used)) static void set_msglevel(struct net_device *dev, u32 val)
{
 debug = val;
}
