
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngene_channel {int demod_type; } ;
 int EINVAL ;
 int tuner_attach_stv6110 (struct ngene_channel*) ;
 int tuner_attach_stv6111 (struct ngene_channel*) ;
 int tuner_attach_tda18212 (struct ngene_channel*,int) ;
 int tuner_attach_tda18271 (struct ngene_channel*) ;

__attribute__((used)) static int tuner_attach_probe(struct ngene_channel *chan)
{
 switch (chan->demod_type) {
 case 129:
  return tuner_attach_stv6110(chan);
 case 135:
  return tuner_attach_tda18271(chan);
 case 130:
 case 132:
 case 131:
 case 134:
 case 133:
  return tuner_attach_tda18212(chan, chan->demod_type);
 case 128:
  return tuner_attach_stv6111(chan);
 }

 return -EINVAL;
}
