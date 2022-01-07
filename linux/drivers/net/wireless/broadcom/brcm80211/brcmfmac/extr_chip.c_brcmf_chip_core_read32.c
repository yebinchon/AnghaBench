
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ base; } ;
struct brcmf_core_priv {TYPE_3__ pub; TYPE_2__* chip; } ;
struct TYPE_5__ {int ctx; TYPE_1__* ops; } ;
struct TYPE_4__ {int (* read32 ) (int ,scalar_t__) ;} ;


 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static u32 brcmf_chip_core_read32(struct brcmf_core_priv *core, u16 reg)
{
 return core->chip->ops->read32(core->chip->ctx, core->pub.base + reg);
}
