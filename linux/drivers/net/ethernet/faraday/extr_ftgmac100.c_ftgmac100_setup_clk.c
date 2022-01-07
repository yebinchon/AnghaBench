
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100 {scalar_t__ use_ncsi; int clk; int dev; } ;


 int FTGMAC_100MHZ ;
 int FTGMAC_25MHZ ;
 scalar_t__ IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int devm_clk_get (int ,int *) ;

__attribute__((used)) static void ftgmac100_setup_clk(struct ftgmac100 *priv)
{
 priv->clk = devm_clk_get(priv->dev, ((void*)0));
 if (IS_ERR(priv->clk))
  return;

 clk_prepare_enable(priv->clk);





 clk_set_rate(priv->clk, priv->use_ncsi ? FTGMAC_25MHZ :
   FTGMAC_100MHZ);
}
