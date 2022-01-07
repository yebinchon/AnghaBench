
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radio_isa_card {TYPE_1__* drv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int region_size; } ;


 struct radio_isa_card* dev_get_drvdata (struct device*) ;
 int radio_isa_common_remove (struct radio_isa_card*,int ) ;

int radio_isa_remove(struct device *pdev, unsigned int dev)
{
 struct radio_isa_card *isa = dev_get_drvdata(pdev);

 return radio_isa_common_remove(isa, isa->drv->region_size);
}
