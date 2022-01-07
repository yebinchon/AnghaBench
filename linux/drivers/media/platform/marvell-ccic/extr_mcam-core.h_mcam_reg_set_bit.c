
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dummy; } ;


 int mcam_reg_write_mask (struct mcam_camera*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline void mcam_reg_set_bit(struct mcam_camera *cam,
  unsigned int reg, unsigned int val)
{
 mcam_reg_write_mask(cam, reg, val, val);
}
