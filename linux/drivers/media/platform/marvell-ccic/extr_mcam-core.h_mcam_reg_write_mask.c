
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dummy; } ;


 unsigned int mcam_reg_read (struct mcam_camera*,unsigned int) ;
 int mcam_reg_write (struct mcam_camera*,unsigned int,unsigned int) ;

__attribute__((used)) static inline void mcam_reg_write_mask(struct mcam_camera *cam, unsigned int reg,
  unsigned int val, unsigned int mask)
{
 unsigned int v = mcam_reg_read(cam, reg);

 v = (v & ~mask) | (val & mask);
 mcam_reg_write(cam, reg, v);
}
