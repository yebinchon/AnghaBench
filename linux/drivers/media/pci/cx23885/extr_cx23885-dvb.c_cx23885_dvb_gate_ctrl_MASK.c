#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_dvb_frontends {int gate; } ;
struct TYPE_5__ {TYPE_3__* frontend; } ;
struct vb2_dvb_frontend {TYPE_2__ dvb; } ;
struct cx23885_tsport {struct vb2_dvb_frontends frontends; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (TYPE_3__*,int) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 struct vb2_dvb_frontend* FUNC1 (struct vb2_dvb_frontends*,int) ; 

__attribute__((used)) static void FUNC2(struct cx23885_tsport  *port, int open)
{
	struct vb2_dvb_frontends *f;
	struct vb2_dvb_frontend *fe;

	f = &port->frontends;

	if (f->gate <= 1) /* undefined or fe0 */
		fe = FUNC1(f, 1);
	else
		fe = FUNC1(f, f->gate);

	if (fe && fe->dvb.frontend && fe->dvb.frontend->ops.i2c_gate_ctrl)
		fe->dvb.frontend->ops.i2c_gate_ctrl(fe->dvb.frontend, open);
}