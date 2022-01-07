
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {int port; int bp; } ;
struct bnx2x_phy {int dummy; } ;


 scalar_t__ GRCBASE_MISC ;
 scalar_t__ MISC_REGISTERS_RESET_REG_3_CLEAR ;
 int REG_WR (int ,scalar_t__,int) ;

__attribute__((used)) static void bnx2x_int_link_reset(struct bnx2x_phy *phy,
     struct link_params *params)
{

 REG_WR(params->bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_CLEAR,
        (0x1ff << (params->port*16)));
}
