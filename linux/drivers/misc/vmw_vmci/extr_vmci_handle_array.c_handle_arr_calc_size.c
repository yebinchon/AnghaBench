
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_handle {int dummy; } ;


 size_t VMCI_HANDLE_ARRAY_HEADER_SIZE ;

__attribute__((used)) static size_t handle_arr_calc_size(u32 capacity)
{
 return VMCI_HANDLE_ARRAY_HEADER_SIZE +
     capacity * sizeof(struct vmci_handle);
}
