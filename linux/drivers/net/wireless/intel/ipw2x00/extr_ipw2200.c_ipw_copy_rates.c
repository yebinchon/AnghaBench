
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ipw_supported_rates {size_t num_rates; int * supported_rates; } ;



__attribute__((used)) static void ipw_copy_rates(struct ipw_supported_rates *dest,
      const struct ipw_supported_rates *src)
{
 u8 i;
 for (i = 0; i < src->num_rates; i++)
  dest->supported_rates[i] = src->supported_rates[i];
 dest->num_rates = src->num_rates;
}
