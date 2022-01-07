
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mdio_device {TYPE_1__* bus; } ;
struct TYPE_2__ {int (* write ) (TYPE_1__*,int ,int ,int ) ;} ;


 int PHY_ADDR (int) ;
 int PHY_REG (int) ;
 int stub1 (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void lan9303_mdio_real_write(struct mdio_device *mdio, int reg, u16 val)
{
 mdio->bus->write(mdio->bus, PHY_ADDR(reg), PHY_REG(reg), val);
}
