
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
typedef enum ravb_reg { ____Placeholder_ravb_reg } ravb_reg ;


 int ravb_read (struct net_device*,int) ;
 int ravb_write (struct net_device*,int,int) ;

void ravb_modify(struct net_device *ndev, enum ravb_reg reg, u32 clear,
   u32 set)
{
 ravb_write(ndev, (ravb_read(ndev, reg) & ~clear) | set, reg);
}
