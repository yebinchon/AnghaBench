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
typedef  int u8 ;
struct ksz_device {int dummy; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct dsa_mall_mirror_tc_entry {int to_local_port; scalar_t__ ingress; } ;

/* Variables and functions */
 int PORT_MIRROR_RX ; 
 int PORT_MIRROR_SNIFFER ; 
 int PORT_MIRROR_TX ; 
 int /*<<< orphan*/  P_MIRROR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_device*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_device*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(struct dsa_switch *ds, int port,
				    struct dsa_mall_mirror_tc_entry *mirror)
{
	struct ksz_device *dev = ds->priv;
	u8 data;

	if (mirror->ingress)
		FUNC0(dev, port, P_MIRROR_CTRL, PORT_MIRROR_RX, false);
	else
		FUNC0(dev, port, P_MIRROR_CTRL, PORT_MIRROR_TX, false);

	FUNC1(dev, port, P_MIRROR_CTRL, &data);

	if (!(data & (PORT_MIRROR_RX | PORT_MIRROR_TX)))
		FUNC0(dev, mirror->to_local_port, P_MIRROR_CTRL,
			     PORT_MIRROR_SNIFFER, false);
}