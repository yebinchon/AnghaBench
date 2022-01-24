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
typedef  int u8 ;
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int*,void*,int*) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_QUERY_HCA_VPORT_PKEY ; 
 int FUNC2 (int*,void*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,void*,int,int) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_core_dev*,void*,int,void*,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  num_ports ; 
 int opcode ; 
 int /*<<< orphan*/  pkey_table_size ; 
 int* query_hca_vport_pkey_in ; 
 int* query_hca_vport_pkey_out ; 
 int /*<<< orphan*/  vport_group_manager ; 
 int vport_number ; 

int FUNC9(struct mlx5_core_dev *dev, u8 other_vport,
			      u8 port_num, u16 vf_num, u16 pkey_index,
			      u16 *pkey)
{
	int in_sz = FUNC4(query_hca_vport_pkey_in);
	int out_sz = FUNC4(query_hca_vport_pkey_out);
	int is_group_manager;
	void *out = NULL;
	void *in = NULL;
	void *pkarr;
	int nout;
	int tbsz;
	int err;
	int i;

	is_group_manager = FUNC1(dev, vport_group_manager);

	tbsz = FUNC8(FUNC1(dev, pkey_table_size));
	if (pkey_index > tbsz && pkey_index != 0xffff)
		return -EINVAL;

	if (pkey_index == 0xffff)
		nout = tbsz;
	else
		nout = 1;

	out_sz += nout * FUNC4(pkey);

	in = FUNC6(in_sz, GFP_KERNEL);
	out = FUNC6(out_sz, GFP_KERNEL);
	if (!in || !out) {
		err = -ENOMEM;
		goto out;
	}

	FUNC3(query_hca_vport_pkey_in, in, opcode, MLX5_CMD_OP_QUERY_HCA_VPORT_PKEY);
	if (other_vport) {
		if (is_group_manager) {
			FUNC3(query_hca_vport_pkey_in, in, vport_number, vf_num);
			FUNC3(query_hca_vport_pkey_in, in, other_vport, 1);
		} else {
			err = -EPERM;
			goto out;
		}
	}
	FUNC3(query_hca_vport_pkey_in, in, pkey_index, pkey_index);

	if (FUNC1(dev, num_ports) == 2)
		FUNC3(query_hca_vport_pkey_in, in, port_num, port_num);

	err = FUNC7(dev, in, in_sz, out, out_sz);
	if (err)
		goto out;

	pkarr = FUNC0(query_hca_vport_pkey_out, out, pkey);
	for (i = 0; i < nout; i++, pkey++, pkarr += FUNC4(pkey))
		*pkey = FUNC2(pkey, pkarr, pkey);

out:
	FUNC5(in);
	FUNC5(out);
	return err;
}