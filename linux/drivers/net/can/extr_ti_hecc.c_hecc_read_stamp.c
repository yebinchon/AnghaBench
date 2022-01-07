
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_hecc_priv {scalar_t__ hecc_ram; } ;


 scalar_t__ HECC_CANMOTS ;
 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 hecc_read_stamp(struct ti_hecc_priv *priv, u32 mbxno)
{
 return __raw_readl(priv->hecc_ram + HECC_CANMOTS + mbxno * 4);
}
