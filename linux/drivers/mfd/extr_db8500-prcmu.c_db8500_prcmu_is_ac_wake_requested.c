
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ac_wake_req_state ;
 scalar_t__ atomic_read (int *) ;

bool db8500_prcmu_is_ac_wake_requested(void)
{
 return (atomic_read(&ac_wake_req_state) != 0);
}
