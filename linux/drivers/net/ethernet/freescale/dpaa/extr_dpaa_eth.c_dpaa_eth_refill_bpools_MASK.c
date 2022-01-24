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
struct dpaa_priv {struct dpaa_bp** dpaa_bps; } ;
struct dpaa_bp {int /*<<< orphan*/  percpu_count; } ;

/* Variables and functions */
 int DPAA_BPS_NUM ; 
 int EINVAL ; 
 int FUNC0 (struct dpaa_bp*,int*) ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dpaa_priv *priv)
{
	struct dpaa_bp *dpaa_bp;
	int *countptr;
	int res, i;

	for (i = 0; i < DPAA_BPS_NUM; i++) {
		dpaa_bp = priv->dpaa_bps[i];
		if (!dpaa_bp)
			return -EINVAL;
		countptr = FUNC1(dpaa_bp->percpu_count);
		res  = FUNC0(dpaa_bp, countptr);
		if (res)
			return res;
	}
	return 0;
}