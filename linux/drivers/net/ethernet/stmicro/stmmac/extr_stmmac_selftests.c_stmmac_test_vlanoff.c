
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;


 int stmmac_test_vlanoff_common (struct stmmac_priv*,int) ;

__attribute__((used)) static int stmmac_test_vlanoff(struct stmmac_priv *priv)
{
 return stmmac_test_vlanoff_common(priv, 0);
}
