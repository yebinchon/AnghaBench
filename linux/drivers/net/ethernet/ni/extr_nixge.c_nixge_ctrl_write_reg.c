
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nixge_priv {scalar_t__ ctrl_regs; } ;
typedef scalar_t__ off_t ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void nixge_ctrl_write_reg(struct nixge_priv *priv, off_t offset, u32 val)
{
 writel(val, priv->ctrl_regs + offset);
}
