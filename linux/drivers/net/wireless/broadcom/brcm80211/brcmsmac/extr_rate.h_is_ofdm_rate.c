
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int BRCMS_RATE_FLAG ;
 size_t RSPEC_RATE_MASK ;
 int is_mcs_rate (size_t) ;
 int* rate_info ;

__attribute__((used)) static inline bool is_ofdm_rate(u32 ratespec)
{
 return !is_mcs_rate(ratespec) &&
        (rate_info[ratespec & RSPEC_RATE_MASK] & BRCMS_RATE_FLAG);
}
