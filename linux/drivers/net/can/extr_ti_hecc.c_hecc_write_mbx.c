
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_hecc_priv {int mbx; } ;


 int __raw_writel (int,int) ;

__attribute__((used)) static inline void hecc_write_mbx(struct ti_hecc_priv *priv, u32 mbxno,
      u32 reg, u32 val)
{
 __raw_writel(val, priv->mbx + mbxno * 0x10 + reg);
}
