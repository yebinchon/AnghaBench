#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_priv_tun_config {scalar_t__ tuner; int /*<<< orphan*/  priv; } ;
struct analog_demod_ops {int /*<<< orphan*/  (* set_config ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {struct analog_demod_ops analog_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {scalar_t__ type; TYPE_2__ fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct tuner* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
			  const struct v4l2_priv_tun_config *cfg)
{
	struct tuner *t = FUNC2(sd);
	struct analog_demod_ops *analog_ops = &t->fe.ops.analog_ops;

	if (t->type != cfg->tuner)
		return 0;

	if (analog_ops->set_config) {
		analog_ops->set_config(&t->fe, cfg->priv);
		return 0;
	}

	FUNC0("Tuner frontend module has no way to set config\n");
	return 0;
}