#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dvb_frontend {struct vp7045_fe_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct vp7045_fe_state {struct dvb_frontend fe; struct dvb_usb_device* d; } ;
struct dvb_usb_device {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct vp7045_fe_state* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vp7045_fe_ops ; 

struct dvb_frontend * FUNC2(struct dvb_usb_device *d)
{
	struct vp7045_fe_state *s = FUNC0(sizeof(struct vp7045_fe_state), GFP_KERNEL);
	if (s == NULL)
		goto error;

	s->d = d;
	FUNC1(&s->fe.ops, &vp7045_fe_ops, sizeof(struct dvb_frontend_ops));
	s->fe.demodulator_priv = s;

	return &s->fe;
error:
	return NULL;
}