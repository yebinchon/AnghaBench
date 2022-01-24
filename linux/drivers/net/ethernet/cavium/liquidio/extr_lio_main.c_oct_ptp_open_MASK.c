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
struct octeon_device {TYPE_1__* pci_dev; } ;
struct net_device {char* name; } ;
struct TYPE_4__ {int max_adj; int /*<<< orphan*/  enable; int /*<<< orphan*/  settime64; int /*<<< orphan*/  gettime64; int /*<<< orphan*/  adjtime; int /*<<< orphan*/  adjfreq; scalar_t__ pps; scalar_t__ n_per_out; scalar_t__ n_ext_ts; scalar_t__ n_alarm; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct lio {int /*<<< orphan*/ * ptp_clock; TYPE_2__ ptp_info; scalar_t__ ptp_adjust; int /*<<< orphan*/  ptp_lock; scalar_t__ oct_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  liquidio_ptp_adjfreq ; 
 int /*<<< orphan*/  liquidio_ptp_adjtime ; 
 int /*<<< orphan*/  liquidio_ptp_enable ; 
 int /*<<< orphan*/  liquidio_ptp_gettime ; 
 int /*<<< orphan*/  liquidio_ptp_settime ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct lio *lio = FUNC0(netdev);
	struct octeon_device *oct = (struct octeon_device *)lio->oct_dev;

	FUNC4(&lio->ptp_lock);

	FUNC3(lio->ptp_info.name, 16, "%s", netdev->name);
	lio->ptp_info.owner = THIS_MODULE;
	lio->ptp_info.max_adj = 250000000;
	lio->ptp_info.n_alarm = 0;
	lio->ptp_info.n_ext_ts = 0;
	lio->ptp_info.n_per_out = 0;
	lio->ptp_info.pps = 0;
	lio->ptp_info.adjfreq = liquidio_ptp_adjfreq;
	lio->ptp_info.adjtime = liquidio_ptp_adjtime;
	lio->ptp_info.gettime64 = liquidio_ptp_gettime;
	lio->ptp_info.settime64 = liquidio_ptp_settime;
	lio->ptp_info.enable = liquidio_ptp_enable;

	lio->ptp_adjust = 0;

	lio->ptp_clock = FUNC2(&lio->ptp_info,
					     &oct->pci_dev->dev);

	if (FUNC1(lio->ptp_clock))
		lio->ptp_clock = NULL;
}