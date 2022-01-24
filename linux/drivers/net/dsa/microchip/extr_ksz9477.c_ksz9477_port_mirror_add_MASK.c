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
struct ksz_device {int dummy; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct dsa_mall_mirror_tc_entry {int to_local_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_MIRROR_RX ; 
 int /*<<< orphan*/  PORT_MIRROR_SNIFFER ; 
 int /*<<< orphan*/  PORT_MIRROR_TX ; 
 int /*<<< orphan*/  P_MIRROR_CTRL ; 
 int /*<<< orphan*/  SW_MIRROR_RX_TX ; 
 int /*<<< orphan*/  S_MIRROR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct dsa_switch *ds, int port,
				   struct dsa_mall_mirror_tc_entry *mirror,
				   bool ingress)
{
	struct ksz_device *dev = ds->priv;

	if (ingress)
		FUNC1(dev, port, P_MIRROR_CTRL, PORT_MIRROR_RX, true);
	else
		FUNC1(dev, port, P_MIRROR_CTRL, PORT_MIRROR_TX, true);

	FUNC1(dev, port, P_MIRROR_CTRL, PORT_MIRROR_SNIFFER, false);

	/* configure mirror port */
	FUNC1(dev, mirror->to_local_port, P_MIRROR_CTRL,
		     PORT_MIRROR_SNIFFER, true);

	FUNC0(dev, S_MIRROR_CTRL, SW_MIRROR_RX_TX, false);

	return 0;
}