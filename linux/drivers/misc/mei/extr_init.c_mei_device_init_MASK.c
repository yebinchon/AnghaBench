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
struct mei_hw_ops {int dummy; } ;
struct mei_device {struct device* dev; struct mei_hw_ops const* ops; int /*<<< orphan*/  pg_event; int /*<<< orphan*/  host_clients_map; scalar_t__ open_handle_count; int /*<<< orphan*/  bus_rescan_work; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  timer_work; int /*<<< orphan*/  tx_queue_limit; int /*<<< orphan*/  ctrl_rd_list; int /*<<< orphan*/  ctrl_wr_list; int /*<<< orphan*/  write_waiting_list; int /*<<< orphan*/  write_list; scalar_t__ reset_count; int /*<<< orphan*/  dev_state; int /*<<< orphan*/  wait_hbm_start; int /*<<< orphan*/  wait_pg; int /*<<< orphan*/  wait_hw_ready; int /*<<< orphan*/  cl_bus_lock; int /*<<< orphan*/  me_clients_rwsem; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  me_clients; int /*<<< orphan*/  device_list; int /*<<< orphan*/  file_list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEI_CLIENTS_MAX ; 
 int /*<<< orphan*/  MEI_DEV_INITIALIZING ; 
 int /*<<< orphan*/  MEI_PG_EVENT_IDLE ; 
 int /*<<< orphan*/  MEI_TX_QUEUE_LIMIT_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mei_cl_bus_rescan_work ; 
 int /*<<< orphan*/  mei_reset_work ; 
 int /*<<< orphan*/  mei_timer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct mei_device *dev,
		     struct device *device,
		     const struct mei_hw_ops *hw_ops)
{
	/* setup our list array */
	FUNC1(&dev->file_list);
	FUNC1(&dev->device_list);
	FUNC1(&dev->me_clients);
	FUNC7(&dev->device_lock);
	FUNC5(&dev->me_clients_rwsem);
	FUNC7(&dev->cl_bus_lock);
	FUNC6(&dev->wait_hw_ready);
	FUNC6(&dev->wait_pg);
	FUNC6(&dev->wait_hbm_start);
	dev->dev_state = MEI_DEV_INITIALIZING;
	dev->reset_count = 0;

	FUNC1(&dev->write_list);
	FUNC1(&dev->write_waiting_list);
	FUNC1(&dev->ctrl_wr_list);
	FUNC1(&dev->ctrl_rd_list);
	dev->tx_queue_limit = MEI_TX_QUEUE_LIMIT_DEFAULT;

	FUNC0(&dev->timer_work, mei_timer);
	FUNC2(&dev->reset_work, mei_reset_work);
	FUNC2(&dev->bus_rescan_work, mei_cl_bus_rescan_work);

	FUNC4(dev->host_clients_map, MEI_CLIENTS_MAX);
	dev->open_handle_count = 0;

	/*
	 * Reserving the first client ID
	 * 0: Reserved for MEI Bus Message communications
	 */
	FUNC3(dev->host_clients_map, 0, 1);

	dev->pg_event = MEI_PG_EVENT_IDLE;
	dev->ops      = hw_ops;
	dev->dev      = device;
}