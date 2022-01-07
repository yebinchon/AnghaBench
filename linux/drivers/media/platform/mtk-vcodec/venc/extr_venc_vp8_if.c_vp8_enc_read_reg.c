
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct venc_vp8_inst {scalar_t__ hw_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 vp8_enc_read_reg(struct venc_vp8_inst *inst, u32 addr)
{
 return readl(inst->hw_base + addr);
}
