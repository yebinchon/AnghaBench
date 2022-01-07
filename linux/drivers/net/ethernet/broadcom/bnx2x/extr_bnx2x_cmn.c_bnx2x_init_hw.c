
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int load_phase; } ;
struct TYPE_4__ {TYPE_1__ hw_init; } ;
struct bnx2x_func_state_params {TYPE_2__ params; int cmd; int * f_obj; int ramrod_flags; int * member_0; } ;
struct bnx2x {int func_obj; } ;


 int BNX2X_F_CMD_HW_INIT ;
 int RAMROD_COMP_WAIT ;
 int __set_bit (int ,int *) ;
 int bnx2x_func_state_change (struct bnx2x*,struct bnx2x_func_state_params*) ;

__attribute__((used)) static int bnx2x_init_hw(struct bnx2x *bp, u32 load_code)
{
 struct bnx2x_func_state_params func_params = {((void*)0)};


 __set_bit(RAMROD_COMP_WAIT, &func_params.ramrod_flags);

 func_params.f_obj = &bp->func_obj;
 func_params.cmd = BNX2X_F_CMD_HW_INIT;

 func_params.params.hw_init.load_phase = load_code;

 return bnx2x_func_state_change(bp, &func_params);
}
