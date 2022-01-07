
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmnand_controller {scalar_t__ nand_fc; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void brcmnand_write_fc(struct brcmnand_controller *ctrl,
         int word, u32 val)
{
 __raw_writel(val, ctrl->nand_fc + word * 4);
}
