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
typedef  int /*<<< orphan*/  u32 ;
struct hinic_port_rx_mode_cmd {int /*<<< orphan*/  rx_mode; int /*<<< orphan*/  func_idx; } ;
struct hinic_hwdev {int /*<<< orphan*/  hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef  int /*<<< orphan*/  rx_mode_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HINIC_PORT_CMD_SET_RX_MODE ; 
 int FUNC1 (struct hinic_hwdev*,int /*<<< orphan*/ ,struct hinic_port_rx_mode_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct hinic_dev *nic_dev, u32 rx_mode)
{
	struct hinic_hwdev *hwdev = nic_dev->hwdev;
	struct hinic_port_rx_mode_cmd rx_mode_cmd;

	rx_mode_cmd.func_idx = FUNC0(hwdev->hwif);
	rx_mode_cmd.rx_mode = rx_mode;

	return FUNC1(hwdev, HINIC_PORT_CMD_SET_RX_MODE,
				  &rx_mode_cmd, sizeof(rx_mode_cmd),
				  NULL, NULL);
}