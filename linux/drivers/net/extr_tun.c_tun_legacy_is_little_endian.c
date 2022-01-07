
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int dummy; } ;


 int virtio_legacy_is_little_endian () ;

__attribute__((used)) static inline bool tun_legacy_is_little_endian(struct tun_struct *tun)
{
 return virtio_legacy_is_little_endian();
}
