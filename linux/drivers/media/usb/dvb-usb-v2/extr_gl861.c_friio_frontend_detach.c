
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct friio_priv {int i2c_client_demod; int tuner_adap; } ;
struct dvb_usb_adapter {int dummy; } ;


 struct friio_priv* adap_to_priv (struct dvb_usb_adapter*) ;
 int dvb_module_release (int ) ;
 int i2c_del_adapter (int *) ;

__attribute__((used)) static int friio_frontend_detach(struct dvb_usb_adapter *adap)
{
 struct friio_priv *priv;

 priv = adap_to_priv(adap);
 i2c_del_adapter(&priv->tuner_adap);
 dvb_module_release(priv->i2c_client_demod);
 return 0;
}
