
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int CSR_RESET ;
 int _il_wr (struct il_priv*,int ,int ) ;

__attribute__((used)) static void
il3945_nic_start(struct il_priv *il)
{

 _il_wr(il, CSR_RESET, 0);
}
