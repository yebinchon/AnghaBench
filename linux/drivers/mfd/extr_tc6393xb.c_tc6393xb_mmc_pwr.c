
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc6393xb {scalar_t__ scr; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 struct tc6393xb* dev_get_drvdata (int ) ;
 int tmio_core_mmc_pwr (scalar_t__,int ,int) ;

__attribute__((used)) static void tc6393xb_mmc_pwr(struct platform_device *mmc, int state)
{
 struct tc6393xb *tc6393xb = dev_get_drvdata(mmc->dev.parent);

 tmio_core_mmc_pwr(tc6393xb->scr + 0x200, 0, state);
}
