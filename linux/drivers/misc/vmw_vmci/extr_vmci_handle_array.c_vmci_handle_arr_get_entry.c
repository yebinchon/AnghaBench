
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vmci_handle_arr {size_t size; struct vmci_handle* entries; } ;
struct vmci_handle {int dummy; } ;


 struct vmci_handle VMCI_INVALID_HANDLE ;
 scalar_t__ unlikely (int) ;

struct vmci_handle
vmci_handle_arr_get_entry(const struct vmci_handle_arr *array, u32 index)
{
 if (unlikely(index >= array->size))
  return VMCI_INVALID_HANDLE;

 return array->entries[index];
}
