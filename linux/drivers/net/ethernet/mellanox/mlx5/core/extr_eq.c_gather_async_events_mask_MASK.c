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
typedef  unsigned long long u64 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 unsigned long long MLX5_ASYNC_EVENT_MASK ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 unsigned long long MLX5_EVENT_TYPE_DCT_DRAINED ; 
 unsigned long long MLX5_EVENT_TYPE_DEVICE_TRACER ; 
 unsigned long long MLX5_EVENT_TYPE_ESW_FUNCTIONS_CHANGED ; 
 unsigned long long MLX5_EVENT_TYPE_FPGA_ERROR ; 
 unsigned long long MLX5_EVENT_TYPE_FPGA_QP_ERROR ; 
 unsigned long long MLX5_EVENT_TYPE_GENERAL_EVENT ; 
 unsigned long long MLX5_EVENT_TYPE_MONITOR_COUNTER ; 
 unsigned long long MLX5_EVENT_TYPE_NIC_VPORT_CHANGE ; 
 unsigned long long MLX5_EVENT_TYPE_PORT_MODULE_EVENT ; 
 unsigned long long MLX5_EVENT_TYPE_PPS_EVENT ; 
 unsigned long long MLX5_EVENT_TYPE_TEMP_WARN_EVENT ; 
 scalar_t__ FUNC3 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  dct ; 
 int /*<<< orphan*/  event_cap ; 
 int /*<<< orphan*/  fpga ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,unsigned long long*) ; 
 int /*<<< orphan*/  general_notification_event ; 
 int /*<<< orphan*/  max_num_of_monitor_counters ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*) ; 
 scalar_t__ FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  port_module_event ; 
 int /*<<< orphan*/  temp_warn_event ; 
 int /*<<< orphan*/  tracer_registers ; 

__attribute__((used)) static void FUNC8(struct mlx5_core_dev *dev, u64 mask[4])
{
	u64 async_event_mask = MLX5_ASYNC_EVENT_MASK;

	if (FUNC4(dev))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_NIC_VPORT_CHANGE);

	if (FUNC0(dev, general_notification_event))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_GENERAL_EVENT);

	if (FUNC0(dev, port_module_event))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_PORT_MODULE_EVENT);
	else
		FUNC6(dev, "port_module_event is not set\n");

	if (FUNC3(dev))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_PPS_EVENT);

	if (FUNC0(dev, fpga))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_FPGA_ERROR) |
				    (1ull << MLX5_EVENT_TYPE_FPGA_QP_ERROR);
	if (FUNC1(dev, dct))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_DCT_DRAINED);

	if (FUNC0(dev, temp_warn_event))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_TEMP_WARN_EVENT);

	if (FUNC2(dev, tracer_registers))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_DEVICE_TRACER);

	if (FUNC0(dev, max_num_of_monitor_counters))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_MONITOR_COUNTER);

	if (FUNC7(dev))
		async_event_mask |=
			(1ull << MLX5_EVENT_TYPE_ESW_FUNCTIONS_CHANGED);

	mask[0] = async_event_mask;

	if (FUNC0(dev, event_cap))
		FUNC5(dev, mask);
}