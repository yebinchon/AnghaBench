
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vsc73xx {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (struct vsc73xx*,int ,int ,int ,int ) ;} ;


 int stub1 (struct vsc73xx*,int ,int ,int ,int ) ;

__attribute__((used)) static int vsc73xx_write(struct vsc73xx *vsc, u8 block, u8 subblock, u8 reg,
    u32 val)
{
 return vsc->ops->write(vsc, block, subblock, reg, val);
}
