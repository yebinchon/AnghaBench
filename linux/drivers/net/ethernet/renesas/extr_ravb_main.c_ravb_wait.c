
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
typedef enum ravb_reg { ____Placeholder_ravb_reg } ravb_reg ;


 int ETIMEDOUT ;
 int ravb_read (struct net_device*,int) ;
 int udelay (int) ;

int ravb_wait(struct net_device *ndev, enum ravb_reg reg, u32 mask, u32 value)
{
 int i;

 for (i = 0; i < 10000; i++) {
  if ((ravb_read(ndev, reg) & mask) == value)
   return 0;
  udelay(10);
 }
 return -ETIMEDOUT;
}
