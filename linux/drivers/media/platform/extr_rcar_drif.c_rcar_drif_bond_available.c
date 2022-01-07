
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_drif_sdr {int dev; int hw_ch_mask; struct rcar_drif** ch; } ;
struct rcar_drif {size_t num; struct rcar_drif_sdr* sdr; } ;
struct platform_device {int dev; } ;
struct device_node {int dummy; } ;


 int BIT (size_t) ;
 int ENODEV ;
 int EPROBE_DEFER ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct rcar_drif* platform_get_drvdata (struct platform_device*) ;
 int put_device (int *) ;

__attribute__((used)) static int rcar_drif_bond_available(struct rcar_drif_sdr *sdr,
        struct device_node *np)
{
 struct platform_device *pdev;
 struct rcar_drif *ch;
 int ret = 0;

 pdev = of_find_device_by_node(np);
 if (!pdev) {
  dev_err(sdr->dev, "failed to get bonded device from node\n");
  return -ENODEV;
 }

 device_lock(&pdev->dev);
 ch = platform_get_drvdata(pdev);
 if (ch) {

  ch->sdr = sdr;


  sdr->ch[ch->num] = ch;
  sdr->hw_ch_mask |= BIT(ch->num);
 } else {

  dev_info(sdr->dev, "defer probe\n");
  ret = -EPROBE_DEFER;
 }
 device_unlock(&pdev->dev);

 put_device(&pdev->dev);

 return ret;
}
