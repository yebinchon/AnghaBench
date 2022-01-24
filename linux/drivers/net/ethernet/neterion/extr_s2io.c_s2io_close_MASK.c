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
typedef  scalar_t__ u64 ;
struct config_param {int max_mc_addr; } ;
struct s2io_nic {struct config_param config; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ S2IO_DISABLE_MAC_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (struct s2io_nic*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct s2io_nic*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct s2io_nic*) ; 
 struct s2io_nic* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct s2io_nic*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct s2io_nic *sp = FUNC3(dev);
	struct config_param *config = &sp->config;
	u64 tmp64;
	int offset;

	/* Return if the device is already closed               *
	 *  Can happen when s2io_card_up failed in change_mtu    *
	 */
	if (!FUNC2(sp))
		return 0;

	FUNC5(sp);
	/* delete all populated mac entries */
	for (offset = 1; offset < config->max_mc_addr; offset++) {
		tmp64 = FUNC1(sp, offset);
		if (tmp64 != S2IO_DISABLE_MAC_ENTRY)
			FUNC0(sp, tmp64);
	}

	FUNC4(sp);

	return 0;
}