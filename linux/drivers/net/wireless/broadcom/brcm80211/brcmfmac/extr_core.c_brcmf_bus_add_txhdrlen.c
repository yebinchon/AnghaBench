
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct device {int dummy; } ;
struct brcmf_pub {int hdrlen; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;


 struct brcmf_bus* dev_get_drvdata (struct device*) ;

void brcmf_bus_add_txhdrlen(struct device *dev, uint len)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pub *drvr = bus_if->drvr;

 if (drvr) {
  drvr->hdrlen += len;
 }
}
