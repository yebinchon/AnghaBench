
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int flags; } ;


 int IFF_PERSIST ;
 int IFF_TAP ;
 int IFF_TUN ;
 int TUN_FEATURES ;

__attribute__((used)) static int tun_flags(struct tun_struct *tun)
{
 return tun->flags & (TUN_FEATURES | IFF_PERSIST | IFF_TUN | IFF_TAP);
}
