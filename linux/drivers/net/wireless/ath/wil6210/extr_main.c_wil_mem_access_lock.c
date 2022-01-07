
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int mem_lock; int status; } ;


 int EBUSY ;
 int down_read_trylock (int *) ;
 scalar_t__ test_bit (int ,int ) ;
 int up_read (int *) ;
 int wil_status_suspended ;
 int wil_status_suspending ;

int wil_mem_access_lock(struct wil6210_priv *wil)
{
 if (!down_read_trylock(&wil->mem_lock))
  return -EBUSY;

 if (test_bit(wil_status_suspending, wil->status) ||
     test_bit(wil_status_suspended, wil->status)) {
  up_read(&wil->mem_lock);
  return -EBUSY;
 }

 return 0;
}
