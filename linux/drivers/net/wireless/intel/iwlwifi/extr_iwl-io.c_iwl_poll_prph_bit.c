
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int ETIMEDOUT ;
 scalar_t__ IWL_POLL_INTERVAL ;
 int iwl_read_prph (struct iwl_trans*,int) ;
 int udelay (scalar_t__) ;

int iwl_poll_prph_bit(struct iwl_trans *trans, u32 addr,
        u32 bits, u32 mask, int timeout)
{
 int t = 0;

 do {
  if ((iwl_read_prph(trans, addr) & mask) == (bits & mask))
   return t;
  udelay(IWL_POLL_INTERVAL);
  t += IWL_POLL_INTERVAL;
 } while (t < timeout);

 return -ETIMEDOUT;
}
