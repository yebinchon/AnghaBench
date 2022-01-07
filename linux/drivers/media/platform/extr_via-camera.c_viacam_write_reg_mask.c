
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int dummy; } ;


 int viacam_read_reg (struct via_camera*,int) ;
 int viacam_write_reg (struct via_camera*,int,int) ;

__attribute__((used)) static inline void viacam_write_reg_mask(struct via_camera *cam,
  int reg, int value, int mask)
{
 int tmp = viacam_read_reg(cam, reg);

 tmp = (tmp & ~mask) | (value & mask);
 viacam_write_reg(cam, reg, tmp);
}
