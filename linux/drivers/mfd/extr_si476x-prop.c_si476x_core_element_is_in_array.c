
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u16 ;



__attribute__((used)) static bool si476x_core_element_is_in_array(u16 element,
         const u16 array[],
         size_t size)
{
 int i;

 for (i = 0; i < size; i++)
  if (element == array[i])
   return 1;

 return 0;
}
