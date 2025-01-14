
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_private {int dummy; } ;


 int IFACE_LOCKOUT_HOST_OFFSET ;
 int IFACE_LOCKOUT_MAC_OFFSET ;
 int atmel_hi (struct atmel_private*,int ) ;
 scalar_t__ atmel_rmem8 (struct atmel_private*,int ) ;
 int atmel_wmem8 (struct atmel_private*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int atmel_lock_mac(struct atmel_private *priv)
{
 int i, j = 20;
 retry:
 for (i = 5000; i; i--) {
  if (!atmel_rmem8(priv, atmel_hi(priv, IFACE_LOCKOUT_HOST_OFFSET)))
   break;
  udelay(20);
 }

 if (!i)
  return 0;

 atmel_wmem8(priv, atmel_hi(priv, IFACE_LOCKOUT_MAC_OFFSET), 1);
 if (atmel_rmem8(priv, atmel_hi(priv, IFACE_LOCKOUT_HOST_OFFSET))) {
  atmel_wmem8(priv, atmel_hi(priv, IFACE_LOCKOUT_MAC_OFFSET), 0);
  if (!j--)
   return 0;
  goto retry;
 }

 return 1;
}
