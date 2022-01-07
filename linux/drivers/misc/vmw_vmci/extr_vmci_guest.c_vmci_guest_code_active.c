
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int vmci_num_guest_devices ;

bool vmci_guest_code_active(void)
{
 return atomic_read(&vmci_num_guest_devices) != 0;
}
