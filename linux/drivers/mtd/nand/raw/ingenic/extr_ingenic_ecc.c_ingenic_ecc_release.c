
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_ecc {int dev; int clk; } ;


 int clk_disable_unprepare (int ) ;
 int put_device (int ) ;

void ingenic_ecc_release(struct ingenic_ecc *ecc)
{
 clk_disable_unprepare(ecc->clk);
 put_device(ecc->dev);
}
