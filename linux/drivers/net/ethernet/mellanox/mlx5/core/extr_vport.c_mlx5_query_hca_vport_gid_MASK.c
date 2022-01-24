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
struct TYPE_2__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef  int u8 ;
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_QUERY_HCA_VPORT_GID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gid_table_size ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,void*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*,int,int,int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  num_ports ; 
 int opcode ; 
 int /*<<< orphan*/  query_hca_vport_gid_in ; 
 int /*<<< orphan*/  query_hca_vport_gid_out ; 
 int /*<<< orphan*/  vport_group_manager ; 
 int vport_number ; 

int FUNC8(struct mlx5_core_dev *dev, u8 other_vport,
			     u8 port_num, u16  vf_num, u16 gid_index,
			     union ib_gid *gid)
{
	int in_sz = FUNC2(query_hca_vport_gid_in);
	int out_sz = FUNC2(query_hca_vport_gid_out);
	int is_group_manager;
	void *out = NULL;
	void *in = NULL;
	union ib_gid *tmp;
	int tbsz;
	int nout;
	int err;

	is_group_manager = FUNC0(dev, vport_group_manager);
	tbsz = FUNC7(FUNC0(dev, gid_table_size));
	FUNC6(dev, "vf_num %d, index %d, gid_table_size %d\n",
		      vf_num, gid_index, tbsz);

	if (gid_index > tbsz && gid_index != 0xffff)
		return -EINVAL;

	if (gid_index == 0xffff)
		nout = tbsz;
	else
		nout = 1;

	out_sz += nout * sizeof(*gid);

	in = FUNC4(in_sz, GFP_KERNEL);
	out = FUNC4(out_sz, GFP_KERNEL);
	if (!in || !out) {
		err = -ENOMEM;
		goto out;
	}

	FUNC1(query_hca_vport_gid_in, in, opcode, MLX5_CMD_OP_QUERY_HCA_VPORT_GID);
	if (other_vport) {
		if (is_group_manager) {
			FUNC1(query_hca_vport_gid_in, in, vport_number, vf_num);
			FUNC1(query_hca_vport_gid_in, in, other_vport, 1);
		} else {
			err = -EPERM;
			goto out;
		}
	}
	FUNC1(query_hca_vport_gid_in, in, gid_index, gid_index);

	if (FUNC0(dev, num_ports) == 2)
		FUNC1(query_hca_vport_gid_in, in, port_num, port_num);

	err = FUNC5(dev, in, in_sz, out, out_sz);
	if (err)
		goto out;

	tmp = out + FUNC2(query_hca_vport_gid_out);
	gid->global.subnet_prefix = tmp->global.subnet_prefix;
	gid->global.interface_id = tmp->global.interface_id;

out:
	FUNC3(in);
	FUNC3(out);
	return err;
}