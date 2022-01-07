
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dev; int regmap; } ;


 int ARIZONA_BOOT_DONE_STS ;
 int ARIZONA_INTERRUPT_RAW_STATUS_5 ;
 int ARIZONA_INTERRUPT_STATUS_5 ;
 int arizona_poll_reg (struct arizona*,int,int ,int ,int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int arizona_wait_for_boot(struct arizona *arizona)
{
 int ret;






 ret = arizona_poll_reg(arizona, 30, ARIZONA_INTERRUPT_RAW_STATUS_5,
          ARIZONA_BOOT_DONE_STS, ARIZONA_BOOT_DONE_STS);

 if (!ret)
  regmap_write(arizona->regmap, ARIZONA_INTERRUPT_STATUS_5,
        ARIZONA_BOOT_DONE_STS);

 pm_runtime_mark_last_busy(arizona->dev);

 return ret;
}
