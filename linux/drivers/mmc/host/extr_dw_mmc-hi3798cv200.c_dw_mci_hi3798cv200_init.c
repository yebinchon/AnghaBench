
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hi3798cv200_priv {void* sample_clk; void* drive_clk; } ;
struct dw_mci {struct hi3798cv200_priv* priv; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (int ,char*) ;
 void* devm_clk_get (int ,char*) ;
 struct hi3798cv200_priv* devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static int dw_mci_hi3798cv200_init(struct dw_mci *host)
{
 struct hi3798cv200_priv *priv;
 int ret;

 priv = devm_kzalloc(host->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->sample_clk = devm_clk_get(host->dev, "ciu-sample");
 if (IS_ERR(priv->sample_clk)) {
  dev_err(host->dev, "failed to get ciu-sample clock\n");
  return PTR_ERR(priv->sample_clk);
 }

 priv->drive_clk = devm_clk_get(host->dev, "ciu-drive");
 if (IS_ERR(priv->drive_clk)) {
  dev_err(host->dev, "failed to get ciu-drive clock\n");
  return PTR_ERR(priv->drive_clk);
 }

 ret = clk_prepare_enable(priv->sample_clk);
 if (ret) {
  dev_err(host->dev, "failed to enable ciu-sample clock\n");
  return ret;
 }

 ret = clk_prepare_enable(priv->drive_clk);
 if (ret) {
  dev_err(host->dev, "failed to enable ciu-drive clock\n");
  goto disable_sample_clk;
 }

 host->priv = priv;
 return 0;

disable_sample_clk:
 clk_disable_unprepare(priv->sample_clk);
 return ret;
}
