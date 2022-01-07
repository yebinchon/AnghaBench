
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_bus {TYPE_1__* drvr; } ;
typedef int s32 ;
struct TYPE_2__ {struct brcmf_if** iflist; } ;


 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,void*,int ) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;

s32 brcmf_iovar_data_set(struct device *dev, char *name, void *data, u32 len)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);
 struct brcmf_if *ifp = bus_if->drvr->iflist[0];

 return brcmf_fil_iovar_data_set(ifp, name, data, len);
}
