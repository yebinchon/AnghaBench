
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int IWL_RATE_INVALID ;
 int find_last_bit (unsigned long*,int ) ;

__attribute__((used)) static inline int rs_get_max_rate_from_mask(unsigned long rate_mask)
{
 if (rate_mask)
  return find_last_bit(&rate_mask, BITS_PER_LONG);
 return IWL_RATE_INVALID;
}
