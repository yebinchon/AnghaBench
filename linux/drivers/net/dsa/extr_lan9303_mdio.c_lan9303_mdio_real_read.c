
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mdio_device {TYPE_1__* bus; } ;
struct TYPE_2__ {int (* read ) (TYPE_1__*,int ,int ) ;} ;


 int PHY_ADDR (int) ;
 int PHY_REG (int) ;
 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static u16 lan9303_mdio_real_read(struct mdio_device *mdio, int reg)
{
 return mdio->bus->read(mdio->bus, PHY_ADDR(reg), PHY_REG(reg));
}
