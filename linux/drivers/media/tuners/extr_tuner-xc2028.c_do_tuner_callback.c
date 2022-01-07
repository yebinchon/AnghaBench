
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* adap; } ;
struct xc2028_data {TYPE_3__ i2c_props; } ;
struct dvb_frontend {int (* callback ) (int ,int ,int,int) ;TYPE_1__* dvb; struct xc2028_data* tuner_priv; } ;
struct TYPE_5__ {int algo_data; } ;
struct TYPE_4__ {int priv; } ;


 int DVB_FRONTEND_COMPONENT_TUNER ;
 int EINVAL ;
 int stub1 (int ,int ,int,int) ;

__attribute__((used)) static inline int do_tuner_callback(struct dvb_frontend *fe, int cmd, int arg)
{
 struct xc2028_data *priv = fe->tuner_priv;
 return (!fe->callback) ? -EINVAL :
  fe->callback(((fe->dvb) && (fe->dvb->priv)) ?
    fe->dvb->priv : priv->i2c_props.adap->algo_data,
        DVB_FRONTEND_COMPONENT_TUNER, cmd, arg);
}
