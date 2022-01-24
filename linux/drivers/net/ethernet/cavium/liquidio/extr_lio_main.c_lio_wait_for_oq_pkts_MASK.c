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
struct octeon_device_priv {int /*<<< orphan*/  droq_tasklet; } ;
struct TYPE_2__ {int oq; } ;
struct octeon_device {int /*<<< orphan*/ * droq; TYPE_1__ io_qmask; scalar_t__ priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct octeon_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct octeon_device *oct)
{
	struct octeon_device_priv *oct_priv =
		(struct octeon_device_priv *)oct->priv;
	int retry = 100, pkt_cnt = 0, pending_pkts = 0;
	int i;

	do {
		pending_pkts = 0;

		for (i = 0; i < FUNC1(oct); i++) {
			if (!(oct->io_qmask.oq & FUNC0(i)))
				continue;
			pkt_cnt += FUNC2(oct->droq[i]);
		}
		if (pkt_cnt > 0) {
			pending_pkts += pkt_cnt;
			FUNC4(&oct_priv->droq_tasklet);
		}
		pkt_cnt = 0;
		FUNC3(1);

	} while (retry-- && pending_pkts);

	return pkt_cnt;
}