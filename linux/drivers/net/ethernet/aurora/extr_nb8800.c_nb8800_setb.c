
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nb8800_priv {int dummy; } ;


 int nb8800_maskb (struct nb8800_priv*,int,int ,int ) ;

__attribute__((used)) static inline void nb8800_setb(struct nb8800_priv *priv, int reg, u8 bits)
{
 nb8800_maskb(priv, reg, bits, bits);
}
