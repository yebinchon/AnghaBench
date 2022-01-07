
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VMCI_PRIVILEGE_FLAG_RESTRICTED ;
 int VMCI_PRIVILEGE_FLAG_TRUSTED ;

__attribute__((used)) static inline bool vmci_deny_interaction(u32 part_one, u32 part_two)
{
 return ((part_one & VMCI_PRIVILEGE_FLAG_RESTRICTED) &&
  !(part_two & VMCI_PRIVILEGE_FLAG_TRUSTED)) ||
        ((part_two & VMCI_PRIVILEGE_FLAG_RESTRICTED) &&
  !(part_one & VMCI_PRIVILEGE_FLAG_TRUSTED));
}
