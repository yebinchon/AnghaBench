
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct em28xx_i2c_bus {struct em28xx* dev; } ;
struct em28xx {int dummy; } ;
struct dtv_frontend_properties {int lna; } ;
struct dvb_frontend {TYPE_1__* dvb; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_2__ {struct em28xx_i2c_bus* priv; } ;


 int EM2874_R80_GPIO_P0_CTRL ;
 int em28xx_write_reg_bits (struct em28xx*,int ,int,int) ;

__attribute__((used)) static int em28xx_pctv_292e_set_lna(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct em28xx_i2c_bus *i2c_bus = fe->dvb->priv;
 struct em28xx *dev = i2c_bus->dev;
 u8 lna;

 if (c->lna == 1)
  lna = 0x01;
 else
  lna = 0x00;

 return em28xx_write_reg_bits(dev, EM2874_R80_GPIO_P0_CTRL, lna, 0x01);
}
