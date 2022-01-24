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
struct lbs_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  fw_waitq; int /*<<< orphan*/  (* fw_callback ) (struct lbs_private*,int,struct firmware const*,struct firmware const*) ;} ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,int,struct firmware const*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct lbs_private *priv, int ret,
	const struct firmware *helper, const struct firmware *mainfw)
{
	unsigned long flags;

	FUNC0("firmware load complete, code %d\n", ret);

	/* User must free helper/mainfw */
	priv->fw_callback(priv, ret, helper, mainfw);

	FUNC1(&priv->driver_lock, flags);
	priv->fw_callback = NULL;
	FUNC4(&priv->fw_waitq);
	FUNC2(&priv->driver_lock, flags);
}