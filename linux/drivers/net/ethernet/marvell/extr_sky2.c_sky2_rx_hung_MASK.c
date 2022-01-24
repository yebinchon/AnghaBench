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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ last; scalar_t__ mac_rp; scalar_t__ mac_lev; scalar_t__ fifo_rp; scalar_t__ fifo_lev; } ;
struct sky2_port {unsigned int port; scalar_t__ last_rx; TYPE_1__ check; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_RL ; 
 int /*<<< orphan*/  Q_RP ; 
 int /*<<< orphan*/  Q_WP ; 
 int /*<<< orphan*/  RX_GMF_RLEV ; 
 int /*<<< orphan*/  RX_GMF_RP ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 struct sky2_port* FUNC3 (struct net_device*) ; 
 unsigned int* rxqaddr ; 
 scalar_t__ FUNC4 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sky2_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct sky2_port *sky2 = FUNC3(dev);
	struct sky2_hw *hw = sky2->hw;
	unsigned port = sky2->port;
	unsigned rxq = rxqaddr[port];
	u32 mac_rp = FUNC4(hw, FUNC1(port, RX_GMF_RP));
	u8 mac_lev = FUNC5(hw, FUNC1(port, RX_GMF_RLEV));
	u8 fifo_rp = FUNC5(hw, FUNC0(rxq, Q_RP));
	u8 fifo_lev = FUNC5(hw, FUNC0(rxq, Q_RL));

	/* If idle and MAC or PCI is stuck */
	if (sky2->check.last == sky2->last_rx &&
	    ((mac_rp == sky2->check.mac_rp &&
	      mac_lev != 0 && mac_lev >= sky2->check.mac_lev) ||
	     /* Check if the PCI RX hang */
	     (fifo_rp == sky2->check.fifo_rp &&
	      fifo_lev != 0 && fifo_lev >= sky2->check.fifo_lev))) {
		FUNC2(KERN_DEBUG, dev,
			      "hung mac %d:%d fifo %d (%d:%d)\n",
			      mac_lev, mac_rp, fifo_lev,
			      fifo_rp, FUNC5(hw, FUNC0(rxq, Q_WP)));
		return 1;
	} else {
		sky2->check.last = sky2->last_rx;
		sky2->check.mac_rp = mac_rp;
		sky2->check.mac_lev = mac_lev;
		sky2->check.fifo_rp = fifo_rp;
		sky2->check.fifo_lev = fifo_lev;
		return 0;
	}
}