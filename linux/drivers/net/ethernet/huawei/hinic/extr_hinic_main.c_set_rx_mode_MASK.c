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
struct work_struct {int dummy; } ;
struct hinic_rx_mode_work {int /*<<< orphan*/  rx_mode; } ;
struct hinic_dev {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  add_mac_addr ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  remove_mac_addr ; 
 struct hinic_dev* FUNC4 (struct hinic_rx_mode_work*) ; 
 struct hinic_rx_mode_work* FUNC5 (struct work_struct*) ; 

__attribute__((used)) static void FUNC6(struct work_struct *work)
{
	struct hinic_rx_mode_work *rx_mode_work = FUNC5(work);
	struct hinic_dev *nic_dev = FUNC4(rx_mode_work);

	FUNC3(nic_dev, drv, nic_dev->netdev, "set rx mode work\n");

	FUNC2(nic_dev, rx_mode_work->rx_mode);

	FUNC1(nic_dev->netdev, add_mac_addr, remove_mac_addr);
	FUNC0(nic_dev->netdev, add_mac_addr, remove_mac_addr);
}