
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct c_can_priv {int* regs; scalar_t__ base; } ;
typedef enum reg { ____Placeholder_reg } reg ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static void c_can_pci_write_reg_aligned_to_32bit(const struct c_can_priv *priv,
      enum reg index, u16 val)
{
 writew(val, priv->base + 2 * priv->regs[index]);
}
