
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcmf_pub {int bus_reset; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;


 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_dev_coredump (struct device*) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;
 int schedule_work (int *) ;

void brcmf_fw_crashed(struct device *dev)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pub *drvr = bus_if->drvr;

 bphy_err(drvr, "Firmware has halted or crashed\n");

 brcmf_dev_coredump(dev);

 schedule_work(&drvr->bus_reset);
}
