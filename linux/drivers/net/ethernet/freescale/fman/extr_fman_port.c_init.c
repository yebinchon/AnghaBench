
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_port {int port_type; } ;


 int EINVAL ;


 int init_bmi_rx (struct fman_port*) ;
 int init_bmi_tx (struct fman_port*) ;
 int init_hwp (struct fman_port*) ;
 int init_qmi (struct fman_port*) ;

__attribute__((used)) static int init(struct fman_port *port)
{
 int err;


 switch (port->port_type) {
 case 129:
  err = init_bmi_rx(port);
  if (!err)
   init_hwp(port);
  break;
 case 128:
  err = init_bmi_tx(port);
  break;
 default:
  return -EINVAL;
 }

 if (err)
  return err;


 err = init_qmi(port);
 if (err)
  return err;

 return 0;
}
