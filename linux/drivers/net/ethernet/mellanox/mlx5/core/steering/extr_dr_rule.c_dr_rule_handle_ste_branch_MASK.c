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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5dr_ste_htbl {int /*<<< orphan*/  chunk_size; struct mlx5dr_ste* ste_arr; TYPE_3__* chunk; } ;
struct mlx5dr_ste {int dummy; } ;
struct mlx5dr_rule_rx_tx {struct mlx5dr_matcher_rx_tx* nic_matcher; } ;
struct mlx5dr_rule {struct mlx5dr_matcher* matcher; } ;
struct mlx5dr_matcher_rx_tx {TYPE_2__* nic_tbl; } ;
struct mlx5dr_matcher {TYPE_1__* tbl; } ;
struct mlx5dr_domain_rx_tx {int dummy; } ;
struct mlx5dr_domain {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {struct list_head* miss_list; } ;
struct TYPE_5__ {struct mlx5dr_domain_rx_tx* nic_dmn; } ;
struct TYPE_4__ {struct mlx5dr_domain* dmn; } ;

/* Variables and functions */
 struct mlx5dr_ste* FUNC0 (struct list_head*,int /*<<< orphan*/ *) ; 
 struct mlx5dr_ste* FUNC1 (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,struct mlx5dr_ste*,int /*<<< orphan*/ *,struct list_head*,struct list_head*) ; 
 scalar_t__ FUNC2 (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,struct mlx5dr_ste_htbl*,struct mlx5dr_ste*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct list_head*,struct list_head*) ; 
 scalar_t__ FUNC3 (struct mlx5dr_ste_htbl*,struct mlx5dr_domain*,struct mlx5dr_domain_rx_tx*) ; 
 struct mlx5dr_ste_htbl* FUNC4 (struct mlx5dr_rule*,struct mlx5dr_rule_rx_tx*,struct mlx5dr_ste_htbl*,int /*<<< orphan*/ ,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5dr_domain*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5dr_ste_htbl*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5dr_ste_htbl*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5dr_domain*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct mlx5dr_ste_htbl*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5dr_matcher_rx_tx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct mlx5dr_ste*) ; 

__attribute__((used)) static struct mlx5dr_ste *
FUNC12(struct mlx5dr_rule *rule,
			  struct mlx5dr_rule_rx_tx *nic_rule,
			  struct list_head *send_ste_list,
			  struct mlx5dr_ste_htbl *cur_htbl,
			  u8 *hw_ste,
			  u8 ste_location,
			  struct mlx5dr_ste_htbl **put_htbl)
{
	struct mlx5dr_matcher *matcher = rule->matcher;
	struct mlx5dr_domain *dmn = matcher->tbl->dmn;
	struct mlx5dr_matcher_rx_tx *nic_matcher;
	struct mlx5dr_domain_rx_tx *nic_dmn;
	struct mlx5dr_ste_htbl *new_htbl;
	struct mlx5dr_ste *matched_ste;
	struct list_head *miss_list;
	bool skip_rehash = false;
	struct mlx5dr_ste *ste;
	int index;

	nic_matcher = nic_rule->nic_matcher;
	nic_dmn = nic_matcher->nic_tbl->nic_dmn;

again:
	index = FUNC9(hw_ste, cur_htbl);
	miss_list = &cur_htbl->chunk->miss_list[index];
	ste = &cur_htbl->ste_arr[index];

	if (FUNC11(ste)) {
		if (FUNC2(matcher, nic_matcher, cur_htbl,
					       ste, ste_location,
					       hw_ste, miss_list,
					       send_ste_list))
			return NULL;
	} else {
		/* Hash table index in use, check if this ste is in the miss list */
		matched_ste = FUNC0(miss_list, hw_ste);
		if (matched_ste) {
			/* If it is last STE in the chain, and has the same tag
			 * it means that all the previous stes are the same,
			 * if so, this rule is duplicated.
			 */
			if (!FUNC10(nic_matcher, ste_location))
				return matched_ste;

			FUNC5(dmn, "Duplicate rule inserted\n");
		}

		if (!skip_rehash && FUNC3(cur_htbl, dmn, nic_dmn)) {
			/* Hash table index in use, try to resize of the hash */
			skip_rehash = true;

			/* Hold the table till we update.
			 * Release in dr_rule_create_rule()
			 */
			*put_htbl = cur_htbl;
			FUNC6(cur_htbl);

			new_htbl = FUNC4(rule, nic_rule, cur_htbl,
						  ste_location, send_ste_list);
			if (!new_htbl) {
				FUNC7(cur_htbl);
				FUNC8(dmn, "failed creating rehash table, htbl-log_size: %d\n",
					    cur_htbl->chunk_size);
			} else {
				cur_htbl = new_htbl;
			}
			goto again;
		} else {
			/* Hash table index in use, add another collision (miss) */
			ste = FUNC1(matcher,
						       nic_matcher,
						       ste,
						       hw_ste,
						       miss_list,
						       send_ste_list);
			if (!ste) {
				FUNC5(dmn, "failed adding collision entry, index: %d\n",
					   index);
				return NULL;
			}
		}
	}
	return ste;
}