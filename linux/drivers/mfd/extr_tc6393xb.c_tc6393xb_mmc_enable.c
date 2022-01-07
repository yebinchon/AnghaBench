
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc6393xb {scalar_t__ scr; } ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int start; } ;


 struct tc6393xb* dev_get_drvdata (int ) ;
 TYPE_2__* tc6393xb_mmc_resources ;
 int tmio_core_mmc_enable (scalar_t__,int ,int) ;

__attribute__((used)) static int tc6393xb_mmc_enable(struct platform_device *mmc)
{
 struct tc6393xb *tc6393xb = dev_get_drvdata(mmc->dev.parent);

 tmio_core_mmc_enable(tc6393xb->scr + 0x200, 0,
  tc6393xb_mmc_resources[0].start & 0xfffe);

 return 0;
}
