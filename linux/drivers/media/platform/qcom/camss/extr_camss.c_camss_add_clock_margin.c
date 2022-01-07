
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CAMSS_CLOCK_MARGIN_DENOMINATOR ;
 int CAMSS_CLOCK_MARGIN_NUMERATOR ;
 int div_u64 (int ,int ) ;

inline void camss_add_clock_margin(u64 *rate)
{
 *rate *= CAMSS_CLOCK_MARGIN_NUMERATOR;
 *rate = div_u64(*rate, CAMSS_CLOCK_MARGIN_DENOMINATOR);
}
