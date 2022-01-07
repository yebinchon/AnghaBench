
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_device_id {scalar_t__ device; scalar_t__ vendor; } ;
struct TYPE_2__ {scalar_t__ device; scalar_t__ vendor; } ;
struct vop_device {TYPE_1__ id; } ;


 scalar_t__ VOP_DEV_ANY_ID ;

__attribute__((used)) static inline int vop_id_match(const struct vop_device *dev,
          const struct vop_device_id *id)
{
 if (id->device != dev->id.device && id->device != VOP_DEV_ANY_ID)
  return 0;

 return id->vendor == VOP_DEV_ANY_ID || id->vendor == dev->id.vendor;
}
