
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle_arr {struct vmci_handle* entries; scalar_t__ size; } ;
struct vmci_handle {int dummy; } ;



struct vmci_handle *vmci_handle_arr_get_handles(struct vmci_handle_arr *array)
{
 if (array->size)
  return array->entries;

 return ((void*)0);
}
