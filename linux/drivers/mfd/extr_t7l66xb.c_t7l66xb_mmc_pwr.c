
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t7l66xb {scalar_t__ scr; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct t7l66xb* dev_get_drvdata (int ) ;
 int tmio_core_mmc_pwr (scalar_t__,int ,int) ;

__attribute__((used)) static void t7l66xb_mmc_pwr(struct platform_device *mmc, int state)
{
 struct t7l66xb *t7l66xb = dev_get_drvdata(mmc->dev.parent);

 tmio_core_mmc_pwr(t7l66xb->scr + 0x200, 0, state);
}
