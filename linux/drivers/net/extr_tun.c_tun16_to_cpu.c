
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tun_struct {int dummy; } ;
typedef int __virtio16 ;


 int __virtio16_to_cpu (int ,int ) ;
 int tun_is_little_endian (struct tun_struct*) ;

__attribute__((used)) static inline u16 tun16_to_cpu(struct tun_struct *tun, __virtio16 val)
{
 return __virtio16_to_cpu(tun_is_little_endian(tun), val);
}
