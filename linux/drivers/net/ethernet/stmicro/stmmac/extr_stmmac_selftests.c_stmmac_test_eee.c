
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eee; } ;
struct stmmac_priv {int xstats; int eee_active; TYPE_1__ dma_cap; } ;
struct stmmac_extra_stats {scalar_t__ irq_tx_path_in_lpi_mode_n; scalar_t__ irq_tx_path_exit_lpi_mode_n; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int kfree (struct stmmac_extra_stats*) ;
 struct stmmac_extra_stats* kzalloc (int,int ) ;
 int memcpy (struct stmmac_extra_stats*,int *,int) ;
 int msleep (int) ;
 int stmmac_test_mac_loopback (struct stmmac_priv*) ;

__attribute__((used)) static int stmmac_test_eee(struct stmmac_priv *priv)
{
 struct stmmac_extra_stats *initial, *final;
 int retries = 10;
 int ret;

 if (!priv->dma_cap.eee || !priv->eee_active)
  return -EOPNOTSUPP;

 initial = kzalloc(sizeof(*initial), GFP_KERNEL);
 if (!initial)
  return -ENOMEM;

 final = kzalloc(sizeof(*final), GFP_KERNEL);
 if (!final) {
  ret = -ENOMEM;
  goto out_free_initial;
 }

 memcpy(initial, &priv->xstats, sizeof(*initial));

 ret = stmmac_test_mac_loopback(priv);
 if (ret)
  goto out_free_final;


 while (--retries) {
  memcpy(final, &priv->xstats, sizeof(*final));

  if (final->irq_tx_path_in_lpi_mode_n >
      initial->irq_tx_path_in_lpi_mode_n)
   break;
  msleep(100);
 }

 if (!retries) {
  ret = -ETIMEDOUT;
  goto out_free_final;
 }

 if (final->irq_tx_path_in_lpi_mode_n <=
     initial->irq_tx_path_in_lpi_mode_n) {
  ret = -EINVAL;
  goto out_free_final;
 }

 if (final->irq_tx_path_exit_lpi_mode_n <=
     initial->irq_tx_path_exit_lpi_mode_n) {
  ret = -EINVAL;
  goto out_free_final;
 }

out_free_final:
 kfree(final);
out_free_initial:
 kfree(initial);
 return ret;
}
