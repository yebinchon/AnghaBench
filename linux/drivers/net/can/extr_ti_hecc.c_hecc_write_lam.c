
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_hecc_priv {scalar_t__ hecc_ram; } ;


 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static inline void hecc_write_lam(struct ti_hecc_priv *priv, u32 mbxno, u32 val)
{
 __raw_writel(val, priv->hecc_ram + mbxno * 4);
}
