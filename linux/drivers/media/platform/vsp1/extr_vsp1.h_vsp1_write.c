
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vsp1_device {scalar_t__ mmio; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vsp1_write(struct vsp1_device *vsp1, u32 reg, u32 data)
{
 iowrite32(data, vsp1->mmio + reg);
}
