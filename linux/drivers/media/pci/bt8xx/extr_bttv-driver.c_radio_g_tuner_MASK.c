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
struct v4l2_tuner {scalar_t__ index; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int /*<<< orphan*/  tea; scalar_t__ has_tea575x; int /*<<< orphan*/  (* audio_mode_gpio ) (struct bttv*,struct v4l2_tuner*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bttv*,struct v4l2_tuner*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tuner ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv, struct v4l2_tuner *t)
{
	struct bttv_fh *fh = priv;
	struct bttv *btv = fh->btv;

	if (0 != t->index)
		return -EINVAL;
	FUNC3(t->name, "Radio", sizeof(t->name));
	t->type = V4L2_TUNER_RADIO;
	FUNC1(btv);

	FUNC0(btv, tuner, g_tuner, t);

	if (btv->audio_mode_gpio)
		btv->audio_mode_gpio(btv, t, 0);

	if (btv->has_tea575x)
		return FUNC2(&btv->tea, t);

	return 0;
}