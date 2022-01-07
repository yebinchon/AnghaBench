
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tap_queue {int dummy; } ;
typedef int __virtio16 ;


 int __virtio16_to_cpu (int ,int ) ;
 int tap_is_little_endian (struct tap_queue*) ;

__attribute__((used)) static inline u16 tap16_to_cpu(struct tap_queue *q, __virtio16 val)
{
 return __virtio16_to_cpu(tap_is_little_endian(q), val);
}
