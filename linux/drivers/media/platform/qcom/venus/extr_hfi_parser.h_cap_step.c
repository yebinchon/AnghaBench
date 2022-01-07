
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {int dummy; } ;


 int WHICH_CAP_STEP ;
 int get_cap (struct venus_inst*,int ,int ) ;

__attribute__((used)) static inline u32 cap_step(struct venus_inst *inst, u32 type)
{
 return get_cap(inst, type, WHICH_CAP_STEP);
}
