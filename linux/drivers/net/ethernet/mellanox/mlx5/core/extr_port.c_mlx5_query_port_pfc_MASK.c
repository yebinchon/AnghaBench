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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pfcc_reg ; 
 int /*<<< orphan*/  pfcrx ; 
 int /*<<< orphan*/  pfctx ; 

int FUNC3(struct mlx5_core_dev *dev, u8 *pfc_en_tx, u8 *pfc_en_rx)
{
	u32 out[FUNC1(pfcc_reg)];
	int err;

	err = FUNC2(dev, out, sizeof(out));
	if (err)
		return err;

	if (pfc_en_tx)
		*pfc_en_tx = FUNC0(pfcc_reg, out, pfctx);

	if (pfc_en_rx)
		*pfc_en_rx = FUNC0(pfcc_reg, out, pfcrx);

	return 0;
}