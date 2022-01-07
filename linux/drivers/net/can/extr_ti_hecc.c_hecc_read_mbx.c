
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_hecc_priv {int mbx; } ;


 int __raw_readl (int) ;

__attribute__((used)) static inline u32 hecc_read_mbx(struct ti_hecc_priv *priv, u32 mbxno, u32 reg)
{
 return __raw_readl(priv->mbx + mbxno * 0x10 + reg);
}
