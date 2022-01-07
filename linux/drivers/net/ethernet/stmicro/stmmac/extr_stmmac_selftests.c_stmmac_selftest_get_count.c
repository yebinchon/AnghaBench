
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int stmmac_selftests ;

int stmmac_selftest_get_count(struct stmmac_priv *priv)
{
 return ARRAY_SIZE(stmmac_selftests);
}
