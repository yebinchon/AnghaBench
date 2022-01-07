
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcmf_pub {scalar_t__* iflist; } ;
struct brcmf_bus {struct brcmf_pub* drvr; } ;


 int BRCMF_C_TERMINATED ;
 int brcmf_fil_cmd_int_set (scalar_t__,int ,int) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;

void brcmf_dev_reset(struct device *dev)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_pub *drvr = bus_if->drvr;

 if (drvr == ((void*)0))
  return;

 if (drvr->iflist[0])
  brcmf_fil_cmd_int_set(drvr->iflist[0], BRCMF_C_TERMINATED, 1);
}
