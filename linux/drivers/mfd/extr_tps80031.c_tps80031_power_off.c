
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int TPS80031_DEVOFF ;
 int TPS80031_PHOENIX_DEV_ON ;
 int TPS80031_SLAVE_ID1 ;
 int dev_info (int ,char*) ;
 TYPE_1__* tps80031_power_off_dev ;
 int tps80031_write (int ,int ,int ,int ) ;

__attribute__((used)) static void tps80031_power_off(void)
{
 dev_info(tps80031_power_off_dev->dev, "switching off PMU\n");
 tps80031_write(tps80031_power_off_dev->dev, TPS80031_SLAVE_ID1,
    TPS80031_PHOENIX_DEV_ON, TPS80031_DEVOFF);
}
