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
struct v4l2_subdev {int dummy; } ;
struct s5k4ecgx {int streaming; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct s5k4ecgx*,int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s5k4ecgx* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,char*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, int on)
{
	struct s5k4ecgx *priv = FUNC3(sd);
	int ret = 0;

	FUNC4(1, debug, sd, "Turn streaming %s\n", on ? "on" : "off");

	FUNC1(&priv->lock);

	if (priv->streaming == !on) {
		ret = FUNC0(priv, on);
		if (!ret)
			priv->streaming = on & 1;
	}

	FUNC2(&priv->lock);
	return ret;
}