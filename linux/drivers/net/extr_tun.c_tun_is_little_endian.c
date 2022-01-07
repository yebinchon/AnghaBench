
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int flags; } ;


 int TUN_VNET_LE ;
 scalar_t__ tun_legacy_is_little_endian (struct tun_struct*) ;

__attribute__((used)) static inline bool tun_is_little_endian(struct tun_struct *tun)
{
 return tun->flags & TUN_VNET_LE ||
  tun_legacy_is_little_endian(tun);
}
