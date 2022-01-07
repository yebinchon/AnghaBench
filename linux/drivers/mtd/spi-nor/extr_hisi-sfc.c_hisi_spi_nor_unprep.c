
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {struct hifmc_priv* priv; } ;
struct hifmc_priv {struct hifmc_host* host; } ;
struct hifmc_host {int lock; int clk; } ;
typedef enum spi_nor_ops { ____Placeholder_spi_nor_ops } spi_nor_ops ;


 int clk_disable_unprepare (int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hisi_spi_nor_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
{
 struct hifmc_priv *priv = nor->priv;
 struct hifmc_host *host = priv->host;

 clk_disable_unprepare(host->clk);
 mutex_unlock(&host->lock);
}
