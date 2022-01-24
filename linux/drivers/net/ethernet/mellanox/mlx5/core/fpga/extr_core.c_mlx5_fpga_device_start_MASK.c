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
typedef  void* u32 ;
struct mlx5_fpga_device {scalar_t__ last_oper_image; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  state; int /*<<< orphan*/  fpga_qp_err_nb; struct mlx5_core_dev* mdev; int /*<<< orphan*/  fpga_err_nb; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_num_qps; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FPGA_ERROR ; 
 int /*<<< orphan*/  FPGA_QP_ERROR ; 
 void* FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_FPGA_IMAGE_USER ; 
 int /*<<< orphan*/  MLX5_FPGA_STATUS_FAILURE ; 
 int /*<<< orphan*/  MLX5_FPGA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpga_device ; 
 int /*<<< orphan*/  fpga_err_event ; 
 int /*<<< orphan*/  fpga_qp_err_event ; 
 int /*<<< orphan*/  ieee_vendor_id ; 
 int /*<<< orphan*/  image_version ; 
 int FUNC2 (struct mlx5_core_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_fpga_device*) ; 
 int FUNC8 (struct mlx5_fpga_device*) ; 
 int FUNC9 (struct mlx5_fpga_device*) ; 
 int FUNC10 (struct mlx5_fpga_device*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_fpga_device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5_fpga_device*,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  sandbox_product_id ; 
 int /*<<< orphan*/  sandbox_product_version ; 
 TYPE_1__ shell_caps ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC17(struct mlx5_core_dev *mdev)
{
	struct mlx5_fpga_device *fdev = mdev->fpga;
	unsigned int max_num_qps;
	unsigned long flags;
	u32 fpga_device_id;
	int err;

	if (!fdev)
		return 0;

	err = FUNC10(fdev);
	if (err)
		goto out;

	err = FUNC6(fdev->mdev);
	if (err)
		goto out;

	fpga_device_id = FUNC0(fdev->mdev, fpga_device);
	FUNC14(fdev, "%s:%u; %s image, version %u; SBU %06x:%04x version %d\n",
		       FUNC11(fpga_device_id),
		       fpga_device_id,
		       FUNC13(fdev->last_oper_image),
		       FUNC0(fdev->mdev, image_version),
		       FUNC0(fdev->mdev, ieee_vendor_id),
		       FUNC0(fdev->mdev, sandbox_product_id),
		       FUNC0(fdev->mdev, sandbox_product_version));

	max_num_qps = FUNC0(mdev, shell_caps.max_num_qps);
	if (!max_num_qps) {
		FUNC12(fdev, "FPGA reports 0 QPs in SHELL_CAPS\n");
		err = -ENOTSUPP;
		goto out;
	}

	err = FUNC2(mdev, max_num_qps);
	if (err)
		goto out;

	FUNC1(&fdev->fpga_err_nb, fpga_err_event, FPGA_ERROR);
	FUNC1(&fdev->fpga_qp_err_nb, fpga_qp_err_event, FPGA_QP_ERROR);
	FUNC4(fdev->mdev, &fdev->fpga_err_nb);
	FUNC4(fdev->mdev, &fdev->fpga_qp_err_nb);

	err = FUNC8(fdev);
	if (err)
		goto err_rsvd_gid;

	if (fdev->last_oper_image == MLX5_FPGA_IMAGE_USER) {
		err = FUNC9(fdev);
		if (err)
			goto err_conn_init;
	}

	goto out;

err_conn_init:
	FUNC7(fdev);

err_rsvd_gid:
	FUNC5(fdev->mdev, &fdev->fpga_err_nb);
	FUNC5(fdev->mdev, &fdev->fpga_qp_err_nb);
	FUNC3(mdev, max_num_qps);
out:
	FUNC15(&fdev->state_lock, flags);
	fdev->state = err ? MLX5_FPGA_STATUS_FAILURE : MLX5_FPGA_STATUS_SUCCESS;
	FUNC16(&fdev->state_lock, flags);
	return err;
}