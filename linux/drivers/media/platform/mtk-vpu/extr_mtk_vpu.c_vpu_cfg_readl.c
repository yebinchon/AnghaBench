
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ cfg; } ;
struct mtk_vpu {TYPE_1__ reg; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 vpu_cfg_readl(struct mtk_vpu *vpu, u32 offset)
{
 return readl(vpu->reg.cfg + offset);
}
