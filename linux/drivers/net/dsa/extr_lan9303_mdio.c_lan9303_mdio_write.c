
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lan9303_mdio {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int mdio_lock; } ;


 int lan9303_mdio_real_write (TYPE_2__*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lan9303_mdio_write(void *ctx, uint32_t reg, uint32_t val)
{
 struct lan9303_mdio *sw_dev = (struct lan9303_mdio *)ctx;

 reg <<= 2;
 mutex_lock(&sw_dev->device->bus->mdio_lock);
 lan9303_mdio_real_write(sw_dev->device, reg, val & 0xffff);
 lan9303_mdio_real_write(sw_dev->device, reg + 2, (val >> 16) & 0xffff);
 mutex_unlock(&sw_dev->device->bus->mdio_lock);

 return 0;
}
