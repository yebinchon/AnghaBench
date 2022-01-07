
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct encx24j600_priv {int dummy; } ;


 int encx24j600_update_reg (struct encx24j600_priv*,int ,int ,int ) ;

__attribute__((used)) static void encx24j600_clr_bits(struct encx24j600_priv *priv, u8 reg, u16 mask)
{
 encx24j600_update_reg(priv, reg, mask, 0);
}
