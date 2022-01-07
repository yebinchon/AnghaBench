
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;


 int __stmmac_test_jumbo (struct stmmac_priv*,int ) ;

__attribute__((used)) static int stmmac_test_jumbo(struct stmmac_priv *priv)
{
 return __stmmac_test_jumbo(priv, 0);
}
