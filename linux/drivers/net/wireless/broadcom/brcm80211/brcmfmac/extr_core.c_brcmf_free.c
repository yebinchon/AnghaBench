
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcmf_pub {int wiphy; int ops; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;


 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int kfree (int ) ;
 int wiphy_free (int ) ;

void brcmf_free(struct device *dev)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pub *drvr = bus_if->drvr;

 if (!drvr)
  return;

 bus_if->drvr = ((void*)0);

 kfree(drvr->ops);

 wiphy_free(drvr->wiphy);
}
