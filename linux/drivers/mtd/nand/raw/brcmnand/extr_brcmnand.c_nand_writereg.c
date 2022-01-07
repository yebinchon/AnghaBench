
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct brcmnand_controller {scalar_t__ nand_base; } ;


 int brcmnand_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void nand_writereg(struct brcmnand_controller *ctrl, u32 offs,
     u32 val)
{
 brcmnand_writel(val, ctrl->nand_base + offs);
}
