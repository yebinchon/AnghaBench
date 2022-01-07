
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xc4000_priv {int dummy; } ;


 int msleep (int) ;
 int xc_get_lock_status (struct xc4000_priv*,int*) ;

__attribute__((used)) static u16 xc_wait_for_lock(struct xc4000_priv *priv)
{
 u16 lock_state = 0;
 int watchdog_count = 40;

 while ((lock_state == 0) && (watchdog_count > 0)) {
  xc_get_lock_status(priv, &lock_state);
  if (lock_state != 1) {
   msleep(5);
   watchdog_count--;
  }
 }
 return lock_state;
}
