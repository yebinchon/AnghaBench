
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {struct hifmc_priv* priv; } ;
struct hifmc_priv {int clkrate; struct hifmc_host* host; } ;
struct hifmc_host {int lock; int clk; } ;
typedef enum spi_nor_ops { ____Placeholder_spi_nor_ops } spi_nor_ops ;


 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hisi_spi_nor_prep(struct spi_nor *nor, enum spi_nor_ops ops)
{
 struct hifmc_priv *priv = nor->priv;
 struct hifmc_host *host = priv->host;
 int ret;

 mutex_lock(&host->lock);

 ret = clk_set_rate(host->clk, priv->clkrate);
 if (ret)
  goto out;

 ret = clk_prepare_enable(host->clk);
 if (ret)
  goto out;

 return 0;

out:
 mutex_unlock(&host->lock);
 return ret;
}
