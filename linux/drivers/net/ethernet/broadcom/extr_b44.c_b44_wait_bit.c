
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b44 {int dev; } ;


 int ENODEV ;
 int br32 (struct b44*,unsigned long) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (int ,char*,int,unsigned long,char*) ;
 int udelay (int) ;

__attribute__((used)) static int b44_wait_bit(struct b44 *bp, unsigned long reg,
   u32 bit, unsigned long timeout, const int clear)
{
 unsigned long i;

 for (i = 0; i < timeout; i++) {
  u32 val = br32(bp, reg);

  if (clear && !(val & bit))
   break;
  if (!clear && (val & bit))
   break;
  udelay(10);
 }
 if (i == timeout) {
  if (net_ratelimit())
   netdev_err(bp->dev, "BUG!  Timeout waiting for bit %08x of register %lx to %s\n",
       bit, reg, clear ? "clear" : "set");

  return -ENODEV;
 }
 return 0;
}
