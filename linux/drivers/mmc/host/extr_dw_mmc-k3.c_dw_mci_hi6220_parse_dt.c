
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct k3_priv {scalar_t__ ctrl_id; int * reg; } ;
struct dw_mci {struct k3_priv* priv; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ TIMING_MODE ;
 struct k3_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ of_alias_get_id (int ,char*) ;
 int * syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int dw_mci_hi6220_parse_dt(struct dw_mci *host)
{
 struct k3_priv *priv;

 priv = devm_kzalloc(host->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->reg = syscon_regmap_lookup_by_phandle(host->dev->of_node,
      "hisilicon,peripheral-syscon");
 if (IS_ERR(priv->reg))
  priv->reg = ((void*)0);

 priv->ctrl_id = of_alias_get_id(host->dev->of_node, "mshc");
 if (priv->ctrl_id < 0)
  priv->ctrl_id = 0;

 if (priv->ctrl_id >= TIMING_MODE)
  return -EINVAL;

 host->priv = priv;
 return 0;
}
