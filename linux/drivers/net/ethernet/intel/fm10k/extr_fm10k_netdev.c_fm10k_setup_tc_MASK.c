#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct fm10k_intfc {int /*<<< orphan*/  flags; TYPE_2__ hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FM10K_FLAG_SWPRI_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct fm10k_intfc*) ; 
 scalar_t__ fm10k_mac_pf ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_intfc*) ; 
 int FUNC4 (struct fm10k_intfc*) ; 
 int FUNC5 (struct net_device*) ; 
 struct fm10k_intfc* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct net_device *dev, u8 tc)
{
	struct fm10k_intfc *interface = FUNC6(dev);
	int err;

	/* Currently only the PF supports priority classes */
	if (tc && (interface->hw.mac.type != fm10k_mac_pf))
		return -EINVAL;

	/* Hardware supports up to 8 traffic classes */
	if (tc > 8)
		return -EINVAL;

	/* Hardware has to reinitialize queues to match packet
	 * buffer alignment. Unfortunately, the hardware is not
	 * flexible enough to do this dynamically.
	 */
	if (FUNC10(dev))
		FUNC1(dev);

	FUNC3(interface);

	FUNC0(interface);

	/* we expect the prio_tc map to be repopulated later */
	FUNC7(dev);
	FUNC8(dev, tc);

	err = FUNC2(interface);
	if (err)
		goto err_queueing_scheme;

	err = FUNC4(interface);
	if (err)
		goto err_mbx_irq;

	err = FUNC10(dev) ? FUNC5(dev) : 0;
	if (err)
		goto err_open;

	/* flag to indicate SWPRI has yet to be updated */
	FUNC11(FM10K_FLAG_SWPRI_CONFIG, interface->flags);

	return 0;
err_open:
	FUNC3(interface);
err_mbx_irq:
	FUNC0(interface);
err_queueing_scheme:
	FUNC9(dev);

	return err;
}