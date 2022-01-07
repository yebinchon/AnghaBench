
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int ETIMEDOUT ;
 int _il_rd (struct il_priv*,int) ;
 int udelay (int const) ;

int
_il_poll_bit(struct il_priv *il, u32 addr, u32 bits, u32 mask, int timeout)
{
 const int interval = 10;
 int t = 0;

 do {
  if ((_il_rd(il, addr) & mask) == (bits & mask))
   return t;
  udelay(interval);
  t += interval;
 } while (t < timeout);

 return -ETIMEDOUT;
}
