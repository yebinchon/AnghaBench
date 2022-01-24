#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct grcan_priv {int /*<<< orphan*/  lock; TYPE_1__ can; scalar_t__ resetting; scalar_t__ closing; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
 int CAN_CTRLMODE_LISTENONLY ; 
 int CAN_MODE_START ; 
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct grcan_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, enum can_mode mode)
{
	struct grcan_priv *priv = FUNC2(dev);
	unsigned long flags;
	int err = 0;

	if (mode == CAN_MODE_START) {
		/* This might be called to restart the device to recover from
		 * bus off errors
		 */
		FUNC4(&priv->lock, flags);
		if (priv->closing || priv->resetting) {
			err = -EBUSY;
		} else {
			FUNC1(dev, "Restarting device\n");
			FUNC0(dev);
			if (!(priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY))
				FUNC3(dev);
		}
		FUNC5(&priv->lock, flags);
		return err;
	}
	return -EOPNOTSUPP;
}