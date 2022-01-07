
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stmmac_priv {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 int ETH_GSTRING_LEN ;
 int snprintf (int *,int ,char*,int,char*) ;
 int stmmac_selftest_get_count (struct stmmac_priv*) ;
 TYPE_1__* stmmac_selftests ;

void stmmac_selftest_get_strings(struct stmmac_priv *priv, u8 *data)
{
 u8 *p = data;
 int i;

 for (i = 0; i < stmmac_selftest_get_count(priv); i++) {
  snprintf(p, ETH_GSTRING_LEN, "%2d. %s", i + 1,
    stmmac_selftests[i].name);
  p += ETH_GSTRING_LEN;
 }
}
