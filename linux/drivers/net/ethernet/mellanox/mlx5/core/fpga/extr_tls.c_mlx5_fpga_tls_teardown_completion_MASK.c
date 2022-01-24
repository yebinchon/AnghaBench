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
typedef  scalar_t__ u32 ;
struct mlx5_fpga_tls_command_context {int dummy; } ;
struct mlx5_fpga_dma_buf {TYPE_1__* sg; } ;
struct mlx5_fpga_device {int dummy; } ;
struct mlx5_fpga_conn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_tls_command_context*) ; 
 scalar_t__ syndrome ; 
 int /*<<< orphan*/  tls_resp ; 

__attribute__((used)) static void
FUNC3(struct mlx5_fpga_conn *conn,
				  struct mlx5_fpga_device *fdev,
				  struct mlx5_fpga_tls_command_context *cmd,
				  struct mlx5_fpga_dma_buf *resp)
{
	if (resp) {
		u32 syndrome = FUNC0(tls_resp, resp->sg[0].data, syndrome);

		if (syndrome)
			FUNC1(fdev,
				      "Teardown stream failed with syndrome = %d",
				      syndrome);
	}
	FUNC2(cmd);
}