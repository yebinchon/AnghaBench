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
struct s5k4ecgx {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s5k4ecgx*) ; 
 int FUNC1 (struct s5k4ecgx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct v4l2_subdev*) ; 
 struct s5k4ecgx* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd)
{
	int ret;
	struct s5k4ecgx *priv = FUNC5(sd);

	FUNC2(&priv->lock);
	ret = FUNC1(priv);
	if (!ret) {
		ret = FUNC4(sd);
		FUNC0(priv);
	}
	FUNC3(&priv->lock);

	return ret;
}