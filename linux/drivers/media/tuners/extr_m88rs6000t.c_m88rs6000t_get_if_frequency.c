
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct m88rs6000t_dev {TYPE_1__* client; } ;
struct dvb_frontend {struct m88rs6000t_dev* tuner_priv; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static int m88rs6000t_get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct m88rs6000t_dev *dev = fe->tuner_priv;

 dev_dbg(&dev->client->dev, "\n");

 *frequency = 0;
 return 0;
}
