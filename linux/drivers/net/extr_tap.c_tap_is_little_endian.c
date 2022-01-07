
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int flags; } ;


 int TAP_VNET_LE ;
 scalar_t__ tap_legacy_is_little_endian (struct tap_queue*) ;

__attribute__((used)) static inline bool tap_is_little_endian(struct tap_queue *q)
{
 return q->flags & TAP_VNET_LE ||
  tap_legacy_is_little_endian(q);
}
