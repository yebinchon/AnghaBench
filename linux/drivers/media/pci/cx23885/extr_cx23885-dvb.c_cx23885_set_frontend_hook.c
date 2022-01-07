
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int set_frontend; } ;
struct dvb_frontend {TYPE_1__ ops; } ;
struct cx23885_tsport {int set_frontend; } ;


 int cx23885_dvb_set_frontend ;

__attribute__((used)) static void cx23885_set_frontend_hook(struct cx23885_tsport *port,
         struct dvb_frontend *fe)
{
 port->set_frontend = fe->ops.set_frontend;
 fe->ops.set_frontend = cx23885_dvb_set_frontend;
}
