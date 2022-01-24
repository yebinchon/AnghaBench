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
struct net_device {int dummy; } ;
struct ksz_device {int br_member; int /*<<< orphan*/  dev_mutex; } ;
struct dsa_switch {struct ksz_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct dsa_switch *ds, int port,
			 struct net_device *br)
{
	struct ksz_device *dev = ds->priv;

	FUNC0(&dev->dev_mutex);
	dev->br_member |= (1 << port);
	FUNC1(&dev->dev_mutex);

	/* port_stp_state_set() will be called after to put the port in
	 * appropriate state so there is no need to do anything.
	 */

	return 0;
}