
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {unsigned int sw_beacon_response_time; } ;
struct ath_hw {TYPE_1__ config; } ;


 unsigned int FUDGE ;
 unsigned int TU_TO_USEC (unsigned int) ;
 int div_u64_rem (scalar_t__,unsigned int,unsigned int*) ;

__attribute__((used)) static u32 ath9k_get_next_tbtt(struct ath_hw *ah, u64 tsf,
          unsigned int interval)
{
 unsigned int offset, divisor;

 tsf += TU_TO_USEC(FUDGE + ah->config.sw_beacon_response_time);
 divisor = TU_TO_USEC(interval);
 div_u64_rem(tsf, divisor, &offset);

 return (u32) tsf + divisor - offset;
}
