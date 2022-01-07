
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {scalar_t__ mmio; } ;


 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static inline void viacam_write_reg(struct via_camera *cam,
  int reg, int value)
{
 iowrite32(value, cam->mmio + reg);
}
