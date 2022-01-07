
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct si476x_property_range {scalar_t__ high; scalar_t__ low; } ;



__attribute__((used)) static bool si476x_core_element_is_in_range(u16 element,
         const struct si476x_property_range range[],
         size_t size)
{
 int i;

 for (i = 0; i < size; i++)
  if (element <= range[i].high && element >= range[i].low)
   return 1;

 return 0;
}
