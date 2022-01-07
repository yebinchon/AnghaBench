
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct brcmf_bus {int dummy; } ;


 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 scalar_t__ brcmf_debug_create_memdump (struct brcmf_bus*,int *,int ) ;
 struct brcmf_bus* dev_get_drvdata (struct device*) ;

void brcmf_dev_coredump(struct device *dev)
{
 struct brcmf_bus *bus_if = dev_get_drvdata(dev);

 if (brcmf_debug_create_memdump(bus_if, ((void*)0), 0) < 0)
  brcmf_dbg(TRACE, "failed to create coredump\n");
}
