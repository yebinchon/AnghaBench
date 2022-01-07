
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nb8800_priv {int dummy; } ;


 int nb8800_maskl (struct nb8800_priv*,int,int ,int ) ;

__attribute__((used)) static inline void nb8800_clearl(struct nb8800_priv *priv, int reg, u32 bits)
{
 nb8800_maskl(priv, reg, bits, 0);
}
