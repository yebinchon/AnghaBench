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
struct rcar_csi2 {int /*<<< orphan*/  remote; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcar_csi2*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_csi2*) ; 
 int FUNC2 (struct rcar_csi2*) ; 
 int /*<<< orphan*/  s_stream ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC4(struct rcar_csi2 *priv)
{
	int ret;

	FUNC1(priv);

	ret = FUNC2(priv);
	if (ret) {
		FUNC0(priv);
		return ret;
	}

	ret = FUNC3(priv->remote, video, s_stream, 1);
	if (ret) {
		FUNC0(priv);
		return ret;
	}

	return 0;
}