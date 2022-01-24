#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct slave_list {int dummy; } ;
struct resource_allocator {int* quota; int* guaranteed; int* allocated; int res_free; int* res_port_free; int /*<<< orphan*/  res_reserved; int /*<<< orphan*/ * res_port_rsvd; int /*<<< orphan*/  alloc_lock; } ;
struct mlx4_slaves_pport {int /*<<< orphan*/  slaves; } ;
struct TYPE_8__ {struct resource_allocator* res_alloc; int /*<<< orphan*/  lock; int /*<<< orphan*/ * res_tree; TYPE_1__* slave_list; } ;
struct TYPE_9__ {TYPE_2__ res_tracker; } ;
struct TYPE_10__ {TYPE_3__ master; } ;
struct mlx4_priv {TYPE_4__ mfunc; } ;
struct TYPE_12__ {int max_counters; int num_ports; scalar_t__ reserved_mtts; scalar_t__ num_mtts; scalar_t__ reserved_mrws; scalar_t__ num_mpts; scalar_t__ reserved_srqs; scalar_t__ num_srqs; scalar_t__ reserved_cqs; scalar_t__ num_cqs; scalar_t__ reserved_qps; scalar_t__ num_qps; } ;
struct mlx4_dev {int num_slaves; TYPE_6__ caps; TYPE_5__* persist; } ;
struct mlx4_active_ports {int /*<<< orphan*/  ports; } ;
struct TYPE_11__ {int num_vfs; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * res_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* MLX4_MAX_MAC_NUM ; 
 int MLX4_MAX_PORTS ; 
 int MLX4_MAX_VLAN_NUM ; 
 int MLX4_NUM_OF_RESOURCE_TYPE ; 
 int /*<<< orphan*/  RB_ROOT ; 
#define  RES_COUNTER 135 
#define  RES_CQ 134 
#define  RES_MAC 133 
#define  RES_MPT 132 
#define  RES_MTT 131 
#define  RES_QP 130 
#define  RES_SRQ 129 
#define  RES_VLAN 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,struct resource_allocator*,int const,int,scalar_t__) ; 
 void* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx4_dev*,struct resource_allocator*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,char*,int) ; 
 struct mlx4_active_ports FUNC8 (struct mlx4_dev*,int) ; 
 int FUNC9 (struct mlx4_dev*) ; 
 scalar_t__ FUNC10 (struct mlx4_dev*) ; 
 struct mlx4_slaves_pport FUNC11 (struct mlx4_dev*,int) ; 
 struct mlx4_priv* FUNC12 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ) ; 

int FUNC16(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC12(dev);
	int i, j;
	int t;

	priv->mfunc.master.res_tracker.slave_list =
		FUNC3(dev->num_slaves, sizeof(struct slave_list),
			GFP_KERNEL);
	if (!priv->mfunc.master.res_tracker.slave_list)
		return -ENOMEM;

	for (i = 0 ; i < dev->num_slaves; i++) {
		for (t = 0; t < MLX4_NUM_OF_RESOURCE_TYPE; ++t)
			FUNC0(&priv->mfunc.master.res_tracker.
				       slave_list[i].res_list[t]);
		FUNC13(&priv->mfunc.master.res_tracker.slave_list[i].mutex);
	}

	FUNC7(dev, "Started init_resource_tracker: %ld slaves\n",
		 dev->num_slaves);
	for (i = 0 ; i < MLX4_NUM_OF_RESOURCE_TYPE; i++)
		priv->mfunc.master.res_tracker.res_tree[i] = RB_ROOT;

	for (i = 0; i < MLX4_NUM_OF_RESOURCE_TYPE; i++) {
		struct resource_allocator *res_alloc =
			&priv->mfunc.master.res_tracker.res_alloc[i];
		res_alloc->quota = FUNC5(dev->persist->num_vfs + 1,
						 sizeof(int),
						 GFP_KERNEL);
		res_alloc->guaranteed = FUNC5(dev->persist->num_vfs + 1,
						      sizeof(int),
						      GFP_KERNEL);
		if (i == RES_MAC || i == RES_VLAN)
			res_alloc->allocated =
				FUNC3(MLX4_MAX_PORTS *
						(dev->persist->num_vfs + 1),
					sizeof(int), GFP_KERNEL);
		else
			res_alloc->allocated =
				FUNC3(dev->persist->num_vfs + 1,
					sizeof(int), GFP_KERNEL);
		/* Reduce the sink counter */
		if (i == RES_COUNTER)
			res_alloc->res_free = dev->caps.max_counters - 1;

		if (!res_alloc->quota || !res_alloc->guaranteed ||
		    !res_alloc->allocated)
			goto no_mem_err;

		FUNC14(&res_alloc->alloc_lock);
		for (t = 0; t < dev->persist->num_vfs + 1; t++) {
			struct mlx4_active_ports actv_ports =
				FUNC8(dev, t);
			switch (i) {
			case RES_QP:
				FUNC2(dev, res_alloc, RES_QP,
						      t, dev->caps.num_qps -
						      dev->caps.reserved_qps -
						      FUNC10(dev));
				break;
			case RES_CQ:
				FUNC2(dev, res_alloc, RES_CQ,
						      t, dev->caps.num_cqs -
						      dev->caps.reserved_cqs);
				break;
			case RES_SRQ:
				FUNC2(dev, res_alloc, RES_SRQ,
						      t, dev->caps.num_srqs -
						      dev->caps.reserved_srqs);
				break;
			case RES_MPT:
				FUNC2(dev, res_alloc, RES_MPT,
						      t, dev->caps.num_mpts -
						      dev->caps.reserved_mrws);
				break;
			case RES_MTT:
				FUNC2(dev, res_alloc, RES_MTT,
						      t, dev->caps.num_mtts -
						      dev->caps.reserved_mtts);
				break;
			case RES_MAC:
				if (t == FUNC9(dev)) {
					int max_vfs_pport = 0;
					/* Calculate the max vfs per port for */
					/* both ports.			      */
					for (j = 0; j < dev->caps.num_ports;
					     j++) {
						struct mlx4_slaves_pport slaves_pport =
							FUNC11(dev, j + 1);
						unsigned current_slaves =
							FUNC1(slaves_pport.slaves,
								      dev->caps.num_ports) - 1;
						if (max_vfs_pport < current_slaves)
							max_vfs_pport =
								current_slaves;
					}
					res_alloc->quota[t] =
						MLX4_MAX_MAC_NUM -
						2 * max_vfs_pport;
					res_alloc->guaranteed[t] = 2;
					for (j = 0; j < MLX4_MAX_PORTS; j++)
						res_alloc->res_port_free[j] =
							MLX4_MAX_MAC_NUM;
				} else {
					res_alloc->quota[t] = MLX4_MAX_MAC_NUM;
					res_alloc->guaranteed[t] = 2;
				}
				break;
			case RES_VLAN:
				if (t == FUNC9(dev)) {
					res_alloc->quota[t] = MLX4_MAX_VLAN_NUM;
					res_alloc->guaranteed[t] = MLX4_MAX_VLAN_NUM / 2;
					for (j = 0; j < MLX4_MAX_PORTS; j++)
						res_alloc->res_port_free[j] =
							res_alloc->quota[t];
				} else {
					res_alloc->quota[t] = MLX4_MAX_VLAN_NUM / 2;
					res_alloc->guaranteed[t] = 0;
				}
				break;
			case RES_COUNTER:
				res_alloc->quota[t] = dev->caps.max_counters;
				res_alloc->guaranteed[t] =
					FUNC6(dev, res_alloc, t);
				break;
			default:
				break;
			}
			if (i == RES_MAC || i == RES_VLAN) {
				for (j = 0; j < dev->caps.num_ports; j++)
					if (FUNC15(j, actv_ports.ports))
						res_alloc->res_port_rsvd[j] +=
							res_alloc->guaranteed[t];
			} else {
				res_alloc->res_reserved += res_alloc->guaranteed[t];
			}
		}
	}
	FUNC14(&priv->mfunc.master.res_tracker.lock);
	return 0;

no_mem_err:
	for (i = 0; i < MLX4_NUM_OF_RESOURCE_TYPE; i++) {
		FUNC4(priv->mfunc.master.res_tracker.res_alloc[i].allocated);
		priv->mfunc.master.res_tracker.res_alloc[i].allocated = NULL;
		FUNC4(priv->mfunc.master.res_tracker.res_alloc[i].guaranteed);
		priv->mfunc.master.res_tracker.res_alloc[i].guaranteed = NULL;
		FUNC4(priv->mfunc.master.res_tracker.res_alloc[i].quota);
		priv->mfunc.master.res_tracker.res_alloc[i].quota = NULL;
	}
	return -ENOMEM;
}