
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {int clk_csr; TYPE_1__* plat; } ;
struct TYPE_2__ {scalar_t__ has_xgmac; scalar_t__ has_sun8i; int stmmac_clk; } ;


 int CSR_F_100M ;
 int CSR_F_150M ;
 int CSR_F_250M ;
 int CSR_F_300M ;
 int CSR_F_35M ;
 int CSR_F_60M ;
 int MAC_CSR_H_FRQ_MASK ;
 int STMMAC_CSR_100_150M ;
 int STMMAC_CSR_150_250M ;
 int STMMAC_CSR_20_35M ;
 int STMMAC_CSR_250_300M ;
 int STMMAC_CSR_35_60M ;
 int STMMAC_CSR_60_100M ;
 int clk_get_rate (int ) ;

__attribute__((used)) static void stmmac_clk_csr_set(struct stmmac_priv *priv)
{
 u32 clk_rate;

 clk_rate = clk_get_rate(priv->plat->stmmac_clk);
 if (!(priv->clk_csr & MAC_CSR_H_FRQ_MASK)) {
  if (clk_rate < CSR_F_35M)
   priv->clk_csr = STMMAC_CSR_20_35M;
  else if ((clk_rate >= CSR_F_35M) && (clk_rate < CSR_F_60M))
   priv->clk_csr = STMMAC_CSR_35_60M;
  else if ((clk_rate >= CSR_F_60M) && (clk_rate < CSR_F_100M))
   priv->clk_csr = STMMAC_CSR_60_100M;
  else if ((clk_rate >= CSR_F_100M) && (clk_rate < CSR_F_150M))
   priv->clk_csr = STMMAC_CSR_100_150M;
  else if ((clk_rate >= CSR_F_150M) && (clk_rate < CSR_F_250M))
   priv->clk_csr = STMMAC_CSR_150_250M;
  else if ((clk_rate >= CSR_F_250M) && (clk_rate < CSR_F_300M))
   priv->clk_csr = STMMAC_CSR_250_300M;
 }

 if (priv->plat->has_sun8i) {
  if (clk_rate > 160000000)
   priv->clk_csr = 0x03;
  else if (clk_rate > 80000000)
   priv->clk_csr = 0x02;
  else if (clk_rate > 40000000)
   priv->clk_csr = 0x01;
  else
   priv->clk_csr = 0;
 }

 if (priv->plat->has_xgmac) {
  if (clk_rate > 400000000)
   priv->clk_csr = 0x5;
  else if (clk_rate > 350000000)
   priv->clk_csr = 0x4;
  else if (clk_rate > 300000000)
   priv->clk_csr = 0x3;
  else if (clk_rate > 250000000)
   priv->clk_csr = 0x2;
  else if (clk_rate > 150000000)
   priv->clk_csr = 0x1;
  else
   priv->clk_csr = 0x0;
 }
}
