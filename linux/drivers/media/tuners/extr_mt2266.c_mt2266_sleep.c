
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt2266_priv {int dummy; } ;
struct dvb_frontend {struct mt2266_priv* tuner_priv; } ;


 int mt2266_writereg (struct mt2266_priv*,int,int) ;

__attribute__((used)) static int mt2266_sleep(struct dvb_frontend *fe)
{
 struct mt2266_priv *priv = fe->tuner_priv;
 mt2266_writereg(priv, 0x17, 0x6d);
 mt2266_writereg(priv, 0x1c, 0x00);
 return 0;
}
