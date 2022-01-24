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
typedef  int u64 ;
struct rx_ring_info {int /*<<< orphan*/  rx_channel; } ;
struct niu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RX_DMA_CTL_STAT_CHAN_FATAL ; 
 int RX_DMA_CTL_STAT_PORT_FATAL ; 
 int RX_DMA_CTL_WRITE_CLEAR_ERRS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (struct niu*,struct rx_ring_info*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct niu *np, struct rx_ring_info *rp)
{
	u64 stat = FUNC3(FUNC0(rp->rx_channel));
	int err = 0;


	if (stat & (RX_DMA_CTL_STAT_CHAN_FATAL |
		    RX_DMA_CTL_STAT_PORT_FATAL))
		err = -EINVAL;

	if (err) {
		FUNC1(np->dev, "RX channel %u error, stat[%llx]\n",
			   rp->rx_channel,
			   (unsigned long long) stat);

		FUNC2(np, rp, stat);
	}

	FUNC4(FUNC0(rp->rx_channel),
	     stat & RX_DMA_CTL_WRITE_CLEAR_ERRS);

	return err;
}