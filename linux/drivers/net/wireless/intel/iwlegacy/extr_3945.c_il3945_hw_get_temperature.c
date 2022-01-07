
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int CSR_UCODE_DRV_GP2 ;
 int _il_rd (struct il_priv*,int ) ;

int
il3945_hw_get_temperature(struct il_priv *il)
{
 return _il_rd(il, CSR_UCODE_DRV_GP2);
}
