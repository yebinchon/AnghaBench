
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int dummy; } ;


 int HFI_CAPABILITY_FRAME_HEIGHT ;
 int cap_step (struct venus_inst*,int ) ;

__attribute__((used)) static inline u32 frame_height_step(struct venus_inst *inst)
{
 return cap_step(inst, HFI_CAPABILITY_FRAME_HEIGHT);
}
