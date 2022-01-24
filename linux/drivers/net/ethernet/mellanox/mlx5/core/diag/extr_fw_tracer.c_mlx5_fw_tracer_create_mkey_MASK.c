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
typedef  int /*<<< orphan*/  u64 ;
typedef  void u32 ;
struct TYPE_2__ {int pdn; int /*<<< orphan*/  mkey; scalar_t__ size; scalar_t__ dma; } ;
struct mlx5_fw_tracer {TYPE_1__ buff; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int MLX5_MKC_ACCESS_MODE_MTT ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (void*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int TRACER_BUFFER_PAGE_NUM ; 
 int /*<<< orphan*/  access_mode_1_0 ; 
 int /*<<< orphan*/  bsf_octword_size ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 void* create_mkey_in ; 
 int /*<<< orphan*/  klm_pas_mtt ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  log_page_size ; 
 int /*<<< orphan*/  lr ; 
 int /*<<< orphan*/  lw ; 
 int /*<<< orphan*/  memory_key_mkey_entry ; 
 int FUNC8 (struct mlx5_core_dev*,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  qpn ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  start_addr ; 
 int /*<<< orphan*/  translations_octword_actual_size ; 
 int /*<<< orphan*/  translations_octword_size ; 

__attribute__((used)) static int FUNC11(struct mlx5_fw_tracer *tracer)
{
	struct mlx5_core_dev *dev = tracer->dev;
	int err, inlen, i;
	__be64 *mtt;
	void *mkc;
	u32 *in;

	inlen = FUNC4(create_mkey_in) +
			sizeof(*mtt) * FUNC10(TRACER_BUFFER_PAGE_NUM, 2);

	in = FUNC7(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC2(create_mkey_in, in, translations_octword_actual_size,
		 FUNC0(TRACER_BUFFER_PAGE_NUM, 2));
	mtt = (u64 *)FUNC1(create_mkey_in, in, klm_pas_mtt);
	for (i = 0 ; i < TRACER_BUFFER_PAGE_NUM ; i++)
		mtt[i] = FUNC5(tracer->buff.dma + i * PAGE_SIZE);

	mkc = FUNC1(create_mkey_in, in, memory_key_mkey_entry);
	FUNC2(mkc, mkc, access_mode_1_0, MLX5_MKC_ACCESS_MODE_MTT);
	FUNC2(mkc, mkc, lr, 1);
	FUNC2(mkc, mkc, lw, 1);
	FUNC2(mkc, mkc, pd, tracer->buff.pdn);
	FUNC2(mkc, mkc, bsf_octword_size, 0);
	FUNC2(mkc, mkc, qpn, 0xffffff);
	FUNC2(mkc, mkc, log_page_size, PAGE_SHIFT);
	FUNC2(mkc, mkc, translations_octword_size,
		 FUNC0(TRACER_BUFFER_PAGE_NUM, 2));
	FUNC3(mkc, mkc, start_addr, tracer->buff.dma);
	FUNC3(mkc, mkc, len, tracer->buff.size);
	err = FUNC8(dev, &tracer->buff.mkey, in, inlen);
	if (err)
		FUNC9(dev, "FWTracer: Failed to create mkey, %d\n", err);

	FUNC6(in);

	return err;
}