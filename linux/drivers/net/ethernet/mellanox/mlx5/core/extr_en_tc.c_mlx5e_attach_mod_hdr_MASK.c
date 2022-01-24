#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mod_hdr_tbl {int /*<<< orphan*/  lock; int /*<<< orphan*/  hlist; } ;
struct mod_hdr_key {int num_actions; int /*<<< orphan*/  actions; } ;
struct mlx5e_tc_flow_parse_attr {int num_mod_hdr_actions; int /*<<< orphan*/  mod_hdr_actions; } ;
struct mlx5e_tc_flow {TYPE_3__* nic_attr; TYPE_2__* esw_attr; int /*<<< orphan*/  mod_hdr; struct mlx5e_mod_hdr_entry* mh; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct TYPE_4__ {int num_actions; void* actions; } ;
struct mlx5e_mod_hdr_entry {int compl_result; int /*<<< orphan*/  res_ready; int /*<<< orphan*/  modify_hdr; int /*<<< orphan*/  flows_lock; int /*<<< orphan*/  flows; TYPE_1__ key; int /*<<< orphan*/  mod_hdr_hlist; int /*<<< orphan*/  refcnt; } ;
struct TYPE_6__ {int /*<<< orphan*/  modify_hdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  modify_hdr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MLX5_MH_ACT_SZ ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5e_tc_flow*) ; 
 struct mod_hdr_tbl* FUNC5 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mod_hdr_key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mlx5e_mod_hdr_entry* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,void*) ; 
 scalar_t__ FUNC13 (struct mlx5e_tc_flow*) ; 
 struct mlx5e_mod_hdr_entry* FUNC14 (struct mod_hdr_tbl*,struct mod_hdr_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5e_priv*,struct mlx5e_mod_hdr_entry*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct mlx5e_priv *priv,
				struct mlx5e_tc_flow *flow,
				struct mlx5e_tc_flow_parse_attr *parse_attr)
{
	int num_actions, actions_size, namespace, err;
	struct mlx5e_mod_hdr_entry *mh;
	struct mod_hdr_tbl *tbl;
	struct mod_hdr_key key;
	u32 hash_key;

	num_actions  = parse_attr->num_mod_hdr_actions;
	actions_size = MLX5_MH_ACT_SZ * num_actions;

	key.actions = parse_attr->mod_hdr_actions;
	key.num_actions = num_actions;

	hash_key = FUNC7(&key);

	namespace = FUNC4(flow);
	tbl = FUNC5(priv, namespace);

	FUNC16(&tbl->lock);
	mh = FUNC14(tbl, &key, hash_key);
	if (mh) {
		FUNC17(&tbl->lock);
		FUNC22(&mh->res_ready);

		if (mh->compl_result < 0) {
			err = -EREMOTEIO;
			goto attach_header_err;
		}
		goto attach_flow;
	}

	mh = FUNC9(sizeof(*mh) + actions_size, GFP_KERNEL);
	if (!mh) {
		FUNC17(&tbl->lock);
		return -ENOMEM;
	}

	mh->key.actions = (void *)mh + sizeof(*mh);
	FUNC11(mh->key.actions, key.actions, actions_size);
	mh->key.num_actions = num_actions;
	FUNC20(&mh->flows_lock);
	FUNC0(&mh->flows);
	FUNC18(&mh->refcnt, 1);
	FUNC8(&mh->res_ready);

	FUNC6(tbl->hlist, &mh->mod_hdr_hlist, hash_key);
	FUNC17(&tbl->lock);

	mh->modify_hdr = FUNC12(priv->mdev, namespace,
						  mh->key.num_actions,
						  mh->key.actions);
	if (FUNC1(mh->modify_hdr)) {
		err = FUNC2(mh->modify_hdr);
		mh->compl_result = err;
		goto alloc_header_err;
	}
	mh->compl_result = 1;
	FUNC3(&mh->res_ready);

attach_flow:
	flow->mh = mh;
	FUNC19(&mh->flows_lock);
	FUNC10(&flow->mod_hdr, &mh->flows);
	FUNC21(&mh->flows_lock);
	if (FUNC13(flow))
		flow->esw_attr->modify_hdr = mh->modify_hdr;
	else
		flow->nic_attr->modify_hdr = mh->modify_hdr;

	return 0;

alloc_header_err:
	FUNC3(&mh->res_ready);
attach_header_err:
	FUNC15(priv, mh, namespace);
	return err;
}