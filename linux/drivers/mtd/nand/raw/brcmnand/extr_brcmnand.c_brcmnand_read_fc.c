
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmnand_controller {scalar_t__ nand_fc; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 brcmnand_read_fc(struct brcmnand_controller *ctrl, int word)
{
 return __raw_readl(ctrl->nand_fc + word * 4);
}
