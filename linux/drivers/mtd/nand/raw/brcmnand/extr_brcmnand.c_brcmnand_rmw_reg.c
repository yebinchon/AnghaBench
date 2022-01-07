
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct brcmnand_controller {int dummy; } ;
typedef enum brcmnand_reg { ____Placeholder_brcmnand_reg } brcmnand_reg ;


 unsigned int brcmnand_read_reg (struct brcmnand_controller*,int) ;
 int brcmnand_write_reg (struct brcmnand_controller*,int,unsigned int) ;

__attribute__((used)) static inline void brcmnand_rmw_reg(struct brcmnand_controller *ctrl,
        enum brcmnand_reg reg, u32 mask, unsigned
        int shift, u32 val)
{
 u32 tmp = brcmnand_read_reg(ctrl, reg);

 tmp &= ~mask;
 tmp |= val << shift;
 brcmnand_write_reg(ctrl, reg, tmp);
}
