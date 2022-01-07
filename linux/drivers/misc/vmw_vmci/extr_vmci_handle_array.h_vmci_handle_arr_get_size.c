
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_handle_arr {int size; } ;



__attribute__((used)) static inline u32 vmci_handle_arr_get_size(
 const struct vmci_handle_arr *array)
{
 return array->size;
}
