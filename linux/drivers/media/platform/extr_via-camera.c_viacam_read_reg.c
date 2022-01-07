
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {scalar_t__ mmio; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline int viacam_read_reg(struct via_camera *cam, int reg)
{
 return ioread32(cam->mmio + reg);
}
