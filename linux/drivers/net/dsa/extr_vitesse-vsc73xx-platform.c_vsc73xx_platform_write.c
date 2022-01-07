
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct vsc73xx_platform {scalar_t__ base_addr; } ;
struct vsc73xx {struct vsc73xx_platform* priv; } ;


 int EINVAL ;
 int iowrite32be (scalar_t__,scalar_t__) ;
 int vsc73xx_is_addr_valid (int ,int ) ;
 scalar_t__ vsc73xx_make_addr (int ,int ,int ) ;

__attribute__((used)) static int vsc73xx_platform_write(struct vsc73xx *vsc, u8 block, u8 subblock,
      u8 reg, u32 val)
{
 struct vsc73xx_platform *vsc_platform = vsc->priv;
 u32 offset;

 if (!vsc73xx_is_addr_valid(block, subblock))
  return -EINVAL;

 offset = vsc73xx_make_addr(block, subblock, reg);
 iowrite32be(val, vsc_platform->base_addr + offset);

 return 0;
}
