
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;


 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_fws_bus_blocked (struct brcmf_pub*,int) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;

void brcmf_proto_bcdc_txflowblock(struct device *dev, bool state)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pub *drvr = bus_if->drvr;

 brcmf_dbg(TRACE, "Enter\n");

 brcmf_fws_bus_blocked(drvr, state);
}
