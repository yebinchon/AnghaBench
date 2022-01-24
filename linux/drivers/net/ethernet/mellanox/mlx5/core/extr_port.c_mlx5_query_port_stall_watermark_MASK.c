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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_stall_critical_watermark ; 
 int /*<<< orphan*/  device_stall_minor_watermark ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pfcc_reg ; 

int FUNC3(struct mlx5_core_dev *dev,
				    u16 *stall_critical_watermark,
				    u16 *stall_minor_watermark)
{
	u32 out[FUNC1(pfcc_reg)];
	int err;

	err = FUNC2(dev, out, sizeof(out));
	if (err)
		return err;

	if (stall_critical_watermark)
		*stall_critical_watermark = FUNC0(pfcc_reg, out,
						     device_stall_critical_watermark);

	if (stall_minor_watermark)
		*stall_minor_watermark = FUNC0(pfcc_reg, out,
						  device_stall_minor_watermark);

	return 0;
}