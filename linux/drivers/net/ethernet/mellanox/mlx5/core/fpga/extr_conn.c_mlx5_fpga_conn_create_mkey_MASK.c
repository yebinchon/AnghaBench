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
typedef  int u32 ;
struct mlx5_core_mkey {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int MLX5_MKC_ACCESS_MODE_PA ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  access_mode_1_0 ; 
 int /*<<< orphan*/  create_mkey_in ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  length64 ; 
 int /*<<< orphan*/  lr ; 
 int /*<<< orphan*/  lw ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 int FUNC5 (struct mlx5_core_dev*,struct mlx5_core_mkey*,int*,int) ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  qpn ; 

__attribute__((used)) static int FUNC6(struct mlx5_core_dev *mdev, u32 pdn,
				      struct mlx5_core_mkey *mkey)
{
	int inlen = FUNC2(create_mkey_in);
	void *mkc;
	u32 *in;
	int err;

	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	mkc = FUNC0(create_mkey_in, in, memory_key_mkey_entry);
	FUNC1(mkc, mkc, access_mode_1_0, MLX5_MKC_ACCESS_MODE_PA);
	FUNC1(mkc, mkc, lw, 1);
	FUNC1(mkc, mkc, lr, 1);

	FUNC1(mkc, mkc, pd, pdn);
	FUNC1(mkc, mkc, length64, 1);
	FUNC1(mkc, mkc, qpn, 0xffffff);

	err = FUNC5(mdev, mkey, in, inlen);

	FUNC3(in);
	return err;
}