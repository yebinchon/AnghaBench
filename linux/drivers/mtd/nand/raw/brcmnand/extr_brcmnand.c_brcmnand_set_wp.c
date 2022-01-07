
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmnand_controller {int dummy; } ;


 int BRCMNAND_CS_SELECT ;
 int CS_SELECT_NAND_WP ;
 int brcmnand_rmw_reg (struct brcmnand_controller*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void brcmnand_set_wp(struct brcmnand_controller *ctrl, bool en)
{
 u32 val = en ? CS_SELECT_NAND_WP : 0;

 brcmnand_rmw_reg(ctrl, BRCMNAND_CS_SELECT, CS_SELECT_NAND_WP, 0, val);
}
