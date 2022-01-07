
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tun_struct {int dummy; } ;
typedef int __virtio16 ;


 int __cpu_to_virtio16 (int ,int ) ;
 int tun_is_little_endian (struct tun_struct*) ;

__attribute__((used)) static inline __virtio16 cpu_to_tun16(struct tun_struct *tun, u16 val)
{
 return __cpu_to_virtio16(tun_is_little_endian(tun), val);
}
