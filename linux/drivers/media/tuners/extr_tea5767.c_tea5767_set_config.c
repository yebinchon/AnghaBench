
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5767_priv {int ctrl; } ;
struct dvb_frontend {struct tea5767_priv* tuner_priv; } ;


 int memcpy (int *,void*,int) ;

__attribute__((used)) static int tea5767_set_config (struct dvb_frontend *fe, void *priv_cfg)
{
 struct tea5767_priv *priv = fe->tuner_priv;

 memcpy(&priv->ctrl, priv_cfg, sizeof(priv->ctrl));

 return 0;
}
