
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_dvb_frontends {int gate; } ;
struct TYPE_5__ {TYPE_3__* frontend; } ;
struct vb2_dvb_frontend {TYPE_2__ dvb; } ;
struct cx23885_tsport {struct vb2_dvb_frontends frontends; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (TYPE_3__*,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;


 int stub1 (TYPE_3__*,int) ;
 struct vb2_dvb_frontend* vb2_dvb_get_frontend (struct vb2_dvb_frontends*,int) ;

__attribute__((used)) static void cx23885_dvb_gate_ctrl(struct cx23885_tsport *port, int open)
{
 struct vb2_dvb_frontends *f;
 struct vb2_dvb_frontend *fe;

 f = &port->frontends;

 if (f->gate <= 1)
  fe = vb2_dvb_get_frontend(f, 1);
 else
  fe = vb2_dvb_get_frontend(f, f->gate);

 if (fe && fe->dvb.frontend && fe->dvb.frontend->ops.i2c_gate_ctrl)
  fe->dvb.frontend->ops.i2c_gate_ctrl(fe->dvb.frontend, open);
}
