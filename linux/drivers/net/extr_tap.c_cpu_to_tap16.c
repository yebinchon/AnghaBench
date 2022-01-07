
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tap_queue {int dummy; } ;
typedef int __virtio16 ;


 int __cpu_to_virtio16 (int ,int ) ;
 int tap_is_little_endian (struct tap_queue*) ;

__attribute__((used)) static inline __virtio16 cpu_to_tap16(struct tap_queue *q, u16 val)
{
 return __cpu_to_virtio16(tap_is_little_endian(q), val);
}
