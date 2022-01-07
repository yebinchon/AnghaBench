
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ BRCMS_RATE_MASK ;
 scalar_t__ BRCM_RATE_11M ;
 scalar_t__ BRCM_RATE_1M ;
 scalar_t__ BRCM_RATE_2M ;
 scalar_t__ BRCM_RATE_5M5 ;
 int is_mcs_rate (scalar_t__) ;

__attribute__((used)) static inline bool is_cck_rate(u32 ratespec)
{
 u32 rate = (ratespec & BRCMS_RATE_MASK);

 return !is_mcs_rate(ratespec) && (
   rate == BRCM_RATE_1M || rate == BRCM_RATE_2M ||
   rate == BRCM_RATE_5M5 || rate == BRCM_RATE_11M);
}
