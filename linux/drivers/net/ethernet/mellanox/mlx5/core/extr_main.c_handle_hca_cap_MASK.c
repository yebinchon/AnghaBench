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
struct mlx5_profile {int mask; int log_max_qp; } ;
struct TYPE_3__ {int /*<<< orphan*/ * hca_cur; } ;
struct mlx5_core_dev {TYPE_1__ caps; struct mlx5_profile* profile; } ;
struct TYPE_4__ {int log_max_qp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 size_t MLX5_CAP_GENERAL ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_PROF_MASK_QP_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MLX5_SET_HCA_CAP_OP_MOD_GENERAL_DEVICE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  cache_line_128byte ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  capability ; 
 int /*<<< orphan*/  cmd_hca_cap ; 
 int /*<<< orphan*/  cmdif_checksum ; 
 int /*<<< orphan*/  dct ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_qp ; 
 int /*<<< orphan*/  log_uar_page_sz ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct mlx5_core_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_vhca_ports ; 
 int /*<<< orphan*/  pkey_table_size ; 
 size_t prof_sel ; 
 TYPE_2__* profile ; 
 int FUNC13 (struct mlx5_core_dev*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_hca_cap_in ; 
 int FUNC14 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  uar_4k ; 

__attribute__((used)) static int FUNC15(struct mlx5_core_dev *dev)
{
	void *set_ctx = NULL;
	struct mlx5_profile *prof = dev->profile;
	int err = -ENOMEM;
	int set_sz = FUNC4(set_hca_cap_in);
	void *set_hca_cap;

	set_ctx = FUNC7(set_sz, GFP_KERNEL);
	if (!set_ctx)
		goto query_ex;

	err = FUNC10(dev, MLX5_CAP_GENERAL);
	if (err)
		goto query_ex;

	set_hca_cap = FUNC0(set_hca_cap_in, set_ctx,
				   capability);
	FUNC8(set_hca_cap, dev->caps.hca_cur[MLX5_CAP_GENERAL],
	       FUNC4(cmd_hca_cap));

	FUNC9(dev, "Current Pkey table size %d Setting new size %d\n",
		      FUNC12(FUNC1(dev, pkey_table_size)),
		      128);
	/* we limit the size of the pkey table to 128 entries for now */
	FUNC3(cmd_hca_cap, set_hca_cap, pkey_table_size,
		 FUNC14(dev, 128));

	/* Check log_max_qp from HCA caps to set in current profile */
	if (FUNC2(dev, log_max_qp) < profile[prof_sel].log_max_qp) {
		FUNC11(dev, "log_max_qp value in current profile is %d, changing it to HCA capability limit (%d)\n",
			       profile[prof_sel].log_max_qp,
			       FUNC2(dev, log_max_qp));
		profile[prof_sel].log_max_qp = FUNC2(dev, log_max_qp);
	}
	if (prof->mask & MLX5_PROF_MASK_QP_SIZE)
		FUNC3(cmd_hca_cap, set_hca_cap, log_max_qp,
			 prof->log_max_qp);

	/* disable cmdif checksum */
	FUNC3(cmd_hca_cap, set_hca_cap, cmdif_checksum, 0);

	/* Enable 4K UAR only when HCA supports it and page size is bigger
	 * than 4K.
	 */
	if (FUNC2(dev, uar_4k) && PAGE_SIZE > 4096)
		FUNC3(cmd_hca_cap, set_hca_cap, uar_4k, 1);

	FUNC3(cmd_hca_cap, set_hca_cap, log_uar_page_sz, PAGE_SHIFT - 12);

	if (FUNC2(dev, cache_line_128byte))
		FUNC3(cmd_hca_cap,
			 set_hca_cap,
			 cache_line_128byte,
			 FUNC5() >= 128 ? 1 : 0);

	if (FUNC2(dev, dct))
		FUNC3(cmd_hca_cap, set_hca_cap, dct, 1);

	if (FUNC2(dev, num_vhca_ports))
		FUNC3(cmd_hca_cap,
			 set_hca_cap,
			 num_vhca_ports,
			 FUNC2(dev, num_vhca_ports));

	err = FUNC13(dev, set_ctx, set_sz,
		       MLX5_SET_HCA_CAP_OP_MOD_GENERAL_DEVICE);

query_ex:
	FUNC6(set_ctx);
	return err;
}