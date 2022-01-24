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
typedef  int /*<<< orphan*/  u64 ;
struct bcm_sysport_priv {scalar_t__* filters_loc; int /*<<< orphan*/  filters; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct bcm_sysport_priv *priv,
				u64 location)
{
	int index;

	/* This is not a rule that we know about */
	index = FUNC0(priv, location);
	if (index < 0)
		return -EOPNOTSUPP;

	/* No need to disable this filter if it was enabled, this will
	 * be taken care of during suspend time by bcm_sysport_suspend_to_wol
	 */
	FUNC1(index, priv->filters);
	priv->filters_loc[index] = 0;

	return 0;
}