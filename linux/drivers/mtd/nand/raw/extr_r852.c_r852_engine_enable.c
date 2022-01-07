
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {int dummy; } ;


 int R852_CTL ;
 int R852_CTL_ON ;
 int R852_CTL_RESET ;
 int R852_HW ;
 int R852_HW_ENABLED ;
 int R852_HW_UNKNOWN ;
 int msleep (int) ;
 int r852_read_reg_dword (struct r852_device*,int ) ;
 int r852_write_reg (struct r852_device*,int ,int) ;
 int r852_write_reg_dword (struct r852_device*,int ,int ) ;

__attribute__((used)) static void r852_engine_enable(struct r852_device *dev)
{
 if (r852_read_reg_dword(dev, R852_HW) & R852_HW_UNKNOWN) {
  r852_write_reg(dev, R852_CTL, R852_CTL_RESET | R852_CTL_ON);
  r852_write_reg_dword(dev, R852_HW, R852_HW_ENABLED);
 } else {
  r852_write_reg_dword(dev, R852_HW, R852_HW_ENABLED);
  r852_write_reg(dev, R852_CTL, R852_CTL_RESET | R852_CTL_ON);
 }
 msleep(300);
 r852_write_reg(dev, R852_CTL, 0);
}
