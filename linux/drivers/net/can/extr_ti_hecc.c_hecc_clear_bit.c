
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_hecc_priv {int dummy; } ;


 int hecc_read (struct ti_hecc_priv*,int) ;
 int hecc_write (struct ti_hecc_priv*,int,int) ;

__attribute__((used)) static inline void hecc_clear_bit(struct ti_hecc_priv *priv, int reg,
      u32 bit_mask)
{
 hecc_write(priv, reg, hecc_read(priv, reg) & ~bit_mask);
}
