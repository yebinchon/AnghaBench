
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int dummy; } ;


 int virtio_legacy_is_little_endian () ;

__attribute__((used)) static inline bool tap_legacy_is_little_endian(struct tap_queue *q)
{
 return virtio_legacy_is_little_endian();
}
