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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_fpga_device {int state; int /*<<< orphan*/  mdev; int /*<<< orphan*/  state_lock; } ;
struct TYPE_2__ {void* raw; } ;
struct mlx5_eqe {TYPE_1__ data; } ;

/* Variables and functions */
#define  MLX5_EVENT_TYPE_FPGA_ERROR 130 
#define  MLX5_EVENT_TYPE_FPGA_QP_ERROR 129 
#define  MLX5_FPGA_STATUS_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  fpga_error_event ; 
 int /*<<< orphan*/  fpga_qp_error_event ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_device*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_fpga_device*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct mlx5_fpga_device *fdev,
			   unsigned long event, void *eqe)
{
	void *data = ((struct mlx5_eqe *)eqe)->data.raw;
	const char *event_name;
	bool teardown = false;
	unsigned long flags;
	u8 syndrome;

	switch (event) {
	case MLX5_EVENT_TYPE_FPGA_ERROR:
		syndrome = FUNC0(fpga_error_event, data, syndrome);
		event_name = FUNC2(syndrome);
		break;
	case MLX5_EVENT_TYPE_FPGA_QP_ERROR:
		syndrome = FUNC0(fpga_qp_error_event, data, syndrome);
		event_name = FUNC1(syndrome);
		break;
	default:
		return NOTIFY_DONE;
	}

	FUNC6(&fdev->state_lock, flags);
	switch (fdev->state) {
	case MLX5_FPGA_STATUS_SUCCESS:
		FUNC3(fdev, "Error %u: %s\n", syndrome, event_name);
		teardown = true;
		break;
	default:
		FUNC4(fdev, "Unexpected error event %u: %s\n",
					   syndrome, event_name);
	}
	FUNC7(&fdev->state_lock, flags);
	/* We tear-down the card's interfaces and functionality because
	 * the FPGA bump-on-the-wire is misbehaving and we lose ability
	 * to communicate with the network. User may still be able to
	 * recover by re-programming or debugging the FPGA
	 */
	if (teardown)
		FUNC5(fdev->mdev);

	return NOTIFY_OK;
}