
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {int dummy; } ;


 int __stmmac_test_l3filt (struct stmmac_priv*,int,int ,int ,int ) ;

__attribute__((used)) static int stmmac_test_l3filt_da(struct stmmac_priv *priv)
{
 u32 addr = 0x10203040;

 return __stmmac_test_l3filt(priv, addr, 0, ~0, 0);
}
