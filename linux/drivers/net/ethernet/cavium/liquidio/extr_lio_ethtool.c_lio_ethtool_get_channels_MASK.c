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
typedef  int u64 ;
typedef  void* u32 ;
struct TYPE_3__ {scalar_t__ sriov_enabled; } ;
struct octeon_device {void* num_iqs; TYPE_1__ sriov_info; } ;
struct octeon_config {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {void* num_txpciq; } ;
struct lio {TYPE_2__ linfo; int /*<<< orphan*/  ifidx; struct octeon_device* oct_dev; } ;
struct ethtool_channels {void* combined_count; void* tx_count; void* rx_count; void* max_combined; void* max_tx; void* max_rx; } ;

/* Variables and functions */
 void* FUNC0 (struct octeon_config*) ; 
 void* FUNC1 (struct octeon_config*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct octeon_config*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct octeon_config*) ; 
 struct octeon_config* FUNC4 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int CN23XX_PKT_INPUT_CTL_RPVF_MASK ; 
 int CN23XX_PKT_INPUT_CTL_RPVF_POS ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct lio* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct octeon_device*) ; 
 scalar_t__ FUNC8 (struct octeon_device*) ; 
 scalar_t__ FUNC9 (struct octeon_device*) ; 
 int /*<<< orphan*/  cn23xx_pf ; 
 int /*<<< orphan*/  cn6xxx ; 
 int FUNC10 (struct octeon_device*,int) ; 

__attribute__((used)) static void
FUNC11(struct net_device *dev,
			 struct ethtool_channels *channel)
{
	struct lio *lio = FUNC6(dev);
	struct octeon_device *oct = lio->oct_dev;
	u32 max_rx = 0, max_tx = 0, tx_count = 0, rx_count = 0;
	u32 combined_count = 0, max_combined = 0;

	if (FUNC9(oct)) {
		struct octeon_config *conf6x = FUNC4(oct, cn6xxx);

		max_rx = FUNC3(conf6x);
		max_tx = FUNC0(conf6x);
		rx_count = FUNC1(conf6x, lio->ifidx);
		tx_count = FUNC2(conf6x, lio->ifidx);
	} else if (FUNC7(oct)) {
		if (oct->sriov_info.sriov_enabled) {
			max_combined = lio->linfo.num_txpciq;
		} else {
			struct octeon_config *conf23_pf =
				FUNC4(oct, cn23xx_pf);

			max_combined = FUNC0(conf23_pf);
		}
		combined_count = oct->num_iqs;
	} else if (FUNC8(oct)) {
		u64 reg_val = 0ULL;
		u64 ctrl = FUNC5(0);

		reg_val = FUNC10(oct, ctrl);
		reg_val = reg_val >> CN23XX_PKT_INPUT_CTL_RPVF_POS;
		max_combined = reg_val & CN23XX_PKT_INPUT_CTL_RPVF_MASK;
		combined_count = oct->num_iqs;
	}

	channel->max_rx = max_rx;
	channel->max_tx = max_tx;
	channel->max_combined = max_combined;
	channel->rx_count = rx_count;
	channel->tx_count = tx_count;
	channel->combined_count = combined_count;
}