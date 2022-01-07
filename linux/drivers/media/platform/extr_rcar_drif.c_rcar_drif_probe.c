
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct rcar_drif_sdr {int hw_ch_mask; int num_hw_ch; struct rcar_drif** ch; int * dev; } ;
struct rcar_drif {int num; struct rcar_drif_sdr* sdr; int start; int base; int clk; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct device_node {int dummy; } ;


 int BIT (size_t) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 void* devm_kzalloc (int *,int,int ) ;
 int hweight_long (int ) ;
 int of_node_put (struct device_node*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rcar_drif*) ;
 int rcar_drif_bond_available (struct rcar_drif_sdr*,struct device_node*) ;
 struct device_node* rcar_drif_bond_enabled (struct platform_device*) ;
 int rcar_drif_primary_bond (struct platform_device*) ;
 int rcar_drif_sdr_probe (struct rcar_drif_sdr*) ;

__attribute__((used)) static int rcar_drif_probe(struct platform_device *pdev)
{
 struct rcar_drif_sdr *sdr;
 struct device_node *np;
 struct rcar_drif *ch;
 struct resource *res;
 int ret;


 ch = devm_kzalloc(&pdev->dev, sizeof(*ch), GFP_KERNEL);
 if (!ch)
  return -ENOMEM;

 ch->pdev = pdev;


 ch->clk = devm_clk_get(&pdev->dev, "fck");
 if (IS_ERR(ch->clk)) {
  ret = PTR_ERR(ch->clk);
  dev_err(&pdev->dev, "clk get failed (%d)\n", ret);
  return ret;
 }


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ch->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ch->base))
  return PTR_ERR(ch->base);

 ch->start = res->start;
 platform_set_drvdata(pdev, ch);


 np = rcar_drif_bond_enabled(pdev);
 if (np) {

  if (!rcar_drif_primary_bond(pdev)) {
   ch->num = 1;
   of_node_put(np);
   return 0;
  }
 }


 sdr = devm_kzalloc(&pdev->dev, sizeof(*sdr), GFP_KERNEL);
 if (!sdr) {
  of_node_put(np);
  return -ENOMEM;
 }
 ch->sdr = sdr;
 sdr->dev = &pdev->dev;


 sdr->ch[ch->num] = ch;
 sdr->hw_ch_mask = BIT(ch->num);
 if (np) {

  ret = rcar_drif_bond_available(sdr, np);
  of_node_put(np);
  if (ret)
   return ret;
 }
 sdr->num_hw_ch = hweight_long(sdr->hw_ch_mask);

 return rcar_drif_sdr_probe(sdr);
}
