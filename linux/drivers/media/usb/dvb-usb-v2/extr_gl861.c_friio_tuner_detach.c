
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct friio_priv {int i2c_client_tuner; } ;
struct dvb_usb_adapter {int dummy; } ;


 struct friio_priv* adap_to_priv (struct dvb_usb_adapter*) ;
 int dvb_module_release (int ) ;

__attribute__((used)) static int friio_tuner_detach(struct dvb_usb_adapter *adap)
{
 struct friio_priv *priv;

 priv = adap_to_priv(adap);
 dvb_module_release(priv->i2c_client_tuner);
 return 0;
}
