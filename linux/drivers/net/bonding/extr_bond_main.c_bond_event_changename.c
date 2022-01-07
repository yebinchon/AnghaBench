
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bonding {int dummy; } ;


 int NOTIFY_DONE ;
 int bond_create_proc_entry (struct bonding*) ;
 int bond_debug_reregister (struct bonding*) ;
 int bond_remove_proc_entry (struct bonding*) ;

__attribute__((used)) static int bond_event_changename(struct bonding *bond)
{
 bond_remove_proc_entry(bond);
 bond_create_proc_entry(bond);

 bond_debug_reregister(bond);

 return NOTIFY_DONE;
}
