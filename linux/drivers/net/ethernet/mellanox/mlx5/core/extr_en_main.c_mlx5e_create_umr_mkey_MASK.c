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
typedef  int u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_mkey {int dummy; } ;
struct TYPE_2__ {int pdn; } ;
struct mlx5_core_dev {TYPE_1__ mlx5e_res; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MLX5_MKC_ACCESS_MODE_MTT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  access_mode_1_0 ; 
 int /*<<< orphan*/  create_mkey_in ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  log_page_size ; 
 int /*<<< orphan*/  lr ; 
 int /*<<< orphan*/  lw ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 int FUNC7 (struct mlx5_core_dev*,struct mlx5_core_mkey*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  qpn ; 
 int /*<<< orphan*/  translations_octword_size ; 
 int /*<<< orphan*/  umr_en ; 

__attribute__((used)) static int FUNC8(struct mlx5_core_dev *mdev,
				 u64 npages, u8 page_shift,
				 struct mlx5_core_mkey *umr_mkey)
{
	int inlen = FUNC4(create_mkey_in);
	void *mkc;
	u32 *in;
	int err;

	in = FUNC6(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	mkc = FUNC0(create_mkey_in, in, memory_key_mkey_entry);

	FUNC2(mkc, mkc, free, 1);
	FUNC2(mkc, mkc, umr_en, 1);
	FUNC2(mkc, mkc, lw, 1);
	FUNC2(mkc, mkc, lr, 1);
	FUNC2(mkc, mkc, access_mode_1_0, MLX5_MKC_ACCESS_MODE_MTT);

	FUNC2(mkc, mkc, qpn, 0xffffff);
	FUNC2(mkc, mkc, pd, mdev->mlx5e_res.pdn);
	FUNC3(mkc, mkc, len, npages << page_shift);
	FUNC2(mkc, mkc, translations_octword_size,
		 FUNC1(npages));
	FUNC2(mkc, mkc, log_page_size, page_shift);

	err = FUNC7(mdev, umr_mkey, in, inlen);

	FUNC5(in);
	return err;
}