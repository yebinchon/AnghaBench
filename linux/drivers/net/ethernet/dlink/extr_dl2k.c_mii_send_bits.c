
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int mii_sendbit (struct net_device*,int) ;

__attribute__((used)) static void
mii_send_bits (struct net_device *dev, u32 data, int len)
{
 int i;

 for (i = len - 1; i >= 0; i--) {
  mii_sendbit (dev, data & (1 << i));
 }
}
