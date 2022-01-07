
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct em28xx_i2c_bus {struct em28xx* dev; } ;
struct em28xx_dvb {int lna_gpio; } ;
struct em28xx {TYPE_2__* intf; struct em28xx_dvb* dvb; } ;
struct dtv_frontend_properties {int lna; } ;
struct dvb_frontend {TYPE_1__* dvb; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct em28xx_i2c_bus* priv; } ;


 unsigned long GPIOF_OUT_INIT_HIGH ;
 unsigned long GPIOF_OUT_INIT_LOW ;
 int KBUILD_MODNAME ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int ,int) ;
 int gpio_free (int ) ;
 int gpio_request_one (int ,unsigned long,int *) ;

__attribute__((used)) static int em28xx_pctv_290e_set_lna(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct em28xx_i2c_bus *i2c_bus = fe->dvb->priv;
 struct em28xx *dev = i2c_bus->dev;
 dev_warn(&dev->intf->dev, "%s: LNA control is disabled (lna=%u)\n",
   KBUILD_MODNAME, c->lna);
 return 0;

}
