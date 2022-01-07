
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct ddb_input* sec_priv; } ;
struct ddb_port {int i2c_gate_lock; struct ddb_dvb* dvb; } ;
struct ddb_input {int nr; struct ddb_port* port; } ;
struct ddb_dvb {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int locked_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct ddb_input *input = fe->sec_priv;
 struct ddb_port *port = input->port;
 struct ddb_dvb *dvb = &port->dvb[input->nr & 1];
 int status;

 if (enable) {
  mutex_lock(&port->i2c_gate_lock);
  status = dvb->i2c_gate_ctrl(fe, 1);
 } else {
  status = dvb->i2c_gate_ctrl(fe, 0);
  mutex_unlock(&port->i2c_gate_lock);
 }
 return status;
}
