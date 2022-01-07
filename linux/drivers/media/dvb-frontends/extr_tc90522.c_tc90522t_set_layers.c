
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct reg_val {int reg; int val; } ;
struct TYPE_2__ {int isdbt_layer_enabled; } ;
struct dvb_frontend {int demodulator_priv; TYPE_1__ dtv_property_cache; } ;


 int reg_write (int ,struct reg_val*,int) ;

__attribute__((used)) static int tc90522t_set_layers(struct dvb_frontend *fe)
{
 struct reg_val rv;
 u8 laysel;

 laysel = ~fe->dtv_property_cache.isdbt_layer_enabled & 0x07;
 laysel = (laysel & 0x01) << 2 | (laysel & 0x02) | (laysel & 0x04) >> 2;
 rv.reg = 0x71;
 rv.val = laysel;
 return reg_write(fe->demodulator_priv, &rv, 1);
}
