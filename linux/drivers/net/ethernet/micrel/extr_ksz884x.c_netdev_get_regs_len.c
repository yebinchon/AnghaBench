
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct hw_regs {scalar_t__ end; scalar_t__ start; } ;


 struct hw_regs* hw_regs_range ;

__attribute__((used)) static int netdev_get_regs_len(struct net_device *dev)
{
 struct hw_regs *range = hw_regs_range;
 int regs_len = 0x10 * sizeof(u32);

 while (range->end > range->start) {
  regs_len += (range->end - range->start + 3) / 4 * 4;
  range++;
 }
 return regs_len;
}
