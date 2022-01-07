
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid02_dev {int xclk; int supplies; } ;


 int MIPID02_NUM_SUPPLIES ;
 int clk_disable_unprepare (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void mipid02_set_power_off(struct mipid02_dev *bridge)
{
 regulator_bulk_disable(MIPID02_NUM_SUPPLIES, bridge->supplies);
 clk_disable_unprepare(bridge->xclk);
}
