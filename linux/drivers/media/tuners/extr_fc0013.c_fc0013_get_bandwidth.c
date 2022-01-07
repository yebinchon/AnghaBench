
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc0013_priv {int bandwidth; } ;
struct dvb_frontend {struct fc0013_priv* tuner_priv; } ;



__attribute__((used)) static int fc0013_get_bandwidth(struct dvb_frontend *fe, u32 *bandwidth)
{
 struct fc0013_priv *priv = fe->tuner_priv;
 *bandwidth = priv->bandwidth;
 return 0;
}
