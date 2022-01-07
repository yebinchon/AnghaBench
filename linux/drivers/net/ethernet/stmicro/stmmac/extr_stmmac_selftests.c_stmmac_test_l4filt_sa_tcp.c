
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct stmmac_priv {int dummy; } ;


 int __stmmac_test_l4filt (struct stmmac_priv*,int ,int,int ,int ,int) ;

__attribute__((used)) static int stmmac_test_l4filt_sa_tcp(struct stmmac_priv *priv)
{
 u16 dummy_port = 0x123;

 return __stmmac_test_l4filt(priv, 0, dummy_port, 0, ~0, 0);
}
