
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vsc73xx {int dummy; } ;


 int vsc73xx_read (struct vsc73xx*,int ,int ,int ,int*) ;
 int vsc73xx_write (struct vsc73xx*,int ,int ,int ,int) ;

__attribute__((used)) static int vsc73xx_update_bits(struct vsc73xx *vsc, u8 block, u8 subblock,
          u8 reg, u32 mask, u32 val)
{
 u32 tmp, orig;
 int ret;


 ret = vsc73xx_read(vsc, block, subblock, reg, &orig);
 if (ret)
  return ret;
 tmp = orig & ~mask;
 tmp |= val & mask;
 return vsc73xx_write(vsc, block, subblock, reg, tmp);
}
