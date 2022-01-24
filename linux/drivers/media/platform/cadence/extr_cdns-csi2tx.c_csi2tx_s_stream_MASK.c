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
struct csi2tx_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int FUNC0 (struct csi2tx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct csi2tx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct csi2tx_priv* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *subdev, int enable)
{
	struct csi2tx_priv *csi2tx = FUNC4(subdev);
	int ret = 0;

	FUNC2(&csi2tx->lock);

	if (enable) {
		/*
		 * If we're not the first users, there's no need to
		 * enable the whole controller.
		 */
		if (!csi2tx->count) {
			ret = FUNC0(csi2tx);
			if (ret)
				goto out;
		}

		csi2tx->count++;
	} else {
		csi2tx->count--;

		/*
		 * Let the last user turn off the lights.
		 */
		if (!csi2tx->count)
			FUNC1(csi2tx);
	}

out:
	FUNC3(&csi2tx->lock);
	return ret;
}