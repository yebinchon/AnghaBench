
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vmci_handle_arr {size_t size; int * entries; } ;
struct vmci_handle {int dummy; } ;


 scalar_t__ vmci_handle_is_equal (int ,struct vmci_handle) ;

bool vmci_handle_arr_has_entry(const struct vmci_handle_arr *array,
          struct vmci_handle entry_handle)
{
 u32 i;

 for (i = 0; i < array->size; i++)
  if (vmci_handle_is_equal(array->entries[i], entry_handle))
   return 1;

 return 0;
}
