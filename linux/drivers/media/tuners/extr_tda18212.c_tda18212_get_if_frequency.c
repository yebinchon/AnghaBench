
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda18212_dev {int if_frequency; } ;
struct dvb_frontend {struct tda18212_dev* tuner_priv; } ;



__attribute__((used)) static int tda18212_get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct tda18212_dev *dev = fe->tuner_priv;

 *frequency = dev->if_frequency;

 return 0;
}
