
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_port {int fe; scalar_t__ i2c_client_demod; scalar_t__ i2c_client_tuner; } ;


 int dvb_frontend_detach (int ) ;
 int dvb_unregister_frontend (int ) ;
 int smi_del_i2c_client (scalar_t__) ;

__attribute__((used)) static void smi_fe_exit(struct smi_port *port)
{
 dvb_unregister_frontend(port->fe);

 if (port->i2c_client_tuner)
  smi_del_i2c_client(port->i2c_client_tuner);
 if (port->i2c_client_demod)
  smi_del_i2c_client(port->i2c_client_demod);
 dvb_frontend_detach(port->fe);
}
