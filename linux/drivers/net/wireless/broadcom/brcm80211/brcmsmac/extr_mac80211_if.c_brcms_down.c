
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct brcms_info {int lock; int callbacks; int wlc; } ;


 int SPINWAIT (int,int) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ brcms_c_down (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void brcms_down(struct brcms_info *wl)
{
 uint callbacks, ret_val = 0;


 ret_val = brcms_c_down(wl->wlc);
 callbacks = atomic_read(&wl->callbacks) - ret_val;


 spin_unlock_bh(&wl->lock);




 SPINWAIT((atomic_read(&wl->callbacks) > callbacks), 100 * 1000);

 spin_lock_bh(&wl->lock);
}
