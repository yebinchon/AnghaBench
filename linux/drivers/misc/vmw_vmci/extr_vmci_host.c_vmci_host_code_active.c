
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int vmci_guest_code_active () ;
 int vmci_host_active_users ;
 scalar_t__ vmci_host_device_initialized ;

bool vmci_host_code_active(void)
{
 return vmci_host_device_initialized &&
     (!vmci_guest_code_active() ||
      atomic_read(&vmci_host_active_users) > 0);
}
