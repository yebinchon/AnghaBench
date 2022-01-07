
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vsp1_device {scalar_t__ mmio; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 vsp1_read(struct vsp1_device *vsp1, u32 reg)
{
 return ioread32(vsp1->mmio + reg);
}
