
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ cfg; } ;
struct mtk_vpu {TYPE_1__ reg; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vpu_cfg_writel(struct mtk_vpu *vpu, u32 val, u32 offset)
{
 writel(val, vpu->reg.cfg + offset);
}
