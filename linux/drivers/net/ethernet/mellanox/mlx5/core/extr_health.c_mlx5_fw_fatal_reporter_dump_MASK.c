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
typedef  scalar_t__ u32 ;
struct mlx5_fw_reporter_ctx {int dummy; } ;
struct TYPE_3__ {scalar_t__ crdump_size; } ;
struct TYPE_4__ {TYPE_1__ health; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink_fmsg {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MLX5_CR_DUMP_CHUNK_SIZE ; 
 int FUNC0 (struct devlink_fmsg*) ; 
 int FUNC1 (struct devlink_fmsg*,char*) ; 
 int FUNC2 (struct devlink_fmsg*,char*,scalar_t__) ; 
 struct mlx5_core_dev* FUNC3 (struct devlink_health_reporter*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int FUNC7 (struct mlx5_core_dev*,scalar_t__*) ; 
 int FUNC8 (struct devlink_fmsg*,struct mlx5_fw_reporter_ctx*) ; 

__attribute__((used)) static int
FUNC9(struct devlink_health_reporter *reporter,
			    struct devlink_fmsg *fmsg, void *priv_ctx)
{
	struct mlx5_core_dev *dev = FUNC3(reporter);
	u32 crdump_size = dev->priv.health.crdump_size;
	u32 *cr_data;
	u32 data_size;
	u32 offset;
	int err;

	if (!FUNC6(dev))
		return -EPERM;

	cr_data = FUNC5(crdump_size, GFP_KERNEL);
	if (!cr_data)
		return -ENOMEM;
	err = FUNC7(dev, cr_data);
	if (err)
		goto free_data;

	if (priv_ctx) {
		struct mlx5_fw_reporter_ctx *fw_reporter_ctx = priv_ctx;

		err = FUNC8(fmsg, fw_reporter_ctx);
		if (err)
			goto free_data;
	}

	err = FUNC1(fmsg, "crdump_data");
	if (err)
		goto free_data;
	for (offset = 0; offset < crdump_size; offset += data_size) {
		if (crdump_size - offset < MLX5_CR_DUMP_CHUNK_SIZE)
			data_size = crdump_size - offset;
		else
			data_size = MLX5_CR_DUMP_CHUNK_SIZE;
		err = FUNC2(fmsg, (char *)cr_data + offset,
					      data_size);
		if (err)
			goto free_data;
	}
	err = FUNC0(fmsg);

free_data:
	FUNC4(cr_data);
	return err;
}