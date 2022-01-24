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
struct s5k4ecgx {int set_params; } ;

/* Variables and functions */
 int FUNC0 (struct s5k4ecgx*) ; 
 int FUNC1 (struct s5k4ecgx*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct v4l2_subdev*) ; 
 struct s5k4ecgx* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int on)
{
	struct s5k4ecgx *priv = FUNC4(sd);
	int ret;

	FUNC5(1, debug, sd, "Switching %s\n", on ? "on" : "off");

	if (on) {
		ret = FUNC1(priv);
		if (ret < 0)
			return ret;
		/* Time to stabilize sensor */
		FUNC2(100);
		ret = FUNC3(sd);
		if (ret < 0)
			FUNC0(priv);
		else
			priv->set_params = 1;
	} else {
		ret = FUNC0(priv);
	}

	return ret;
}