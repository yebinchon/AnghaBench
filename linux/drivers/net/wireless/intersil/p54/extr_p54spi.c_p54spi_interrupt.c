
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct p54s_priv {int work; int hw; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ieee80211_queue_work (int ,int *) ;
 struct p54s_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static irqreturn_t p54spi_interrupt(int irq, void *config)
{
 struct spi_device *spi = config;
 struct p54s_priv *priv = spi_get_drvdata(spi);

 ieee80211_queue_work(priv->hw, &priv->work);

 return IRQ_HANDLED;
}
