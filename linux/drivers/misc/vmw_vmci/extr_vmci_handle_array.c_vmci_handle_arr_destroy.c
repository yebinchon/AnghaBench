
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle_arr {int dummy; } ;


 int kfree (struct vmci_handle_arr*) ;

void vmci_handle_arr_destroy(struct vmci_handle_arr *array)
{
 kfree(array);
}
