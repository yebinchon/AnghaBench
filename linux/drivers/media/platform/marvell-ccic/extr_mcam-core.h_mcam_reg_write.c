
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {scalar_t__ regs; } ;


 int iowrite32 (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void mcam_reg_write(struct mcam_camera *cam, unsigned int reg,
  unsigned int val)
{
 iowrite32(val, cam->regs + reg);
}
