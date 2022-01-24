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
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_dram_data {int /*<<< orphan*/  block; int /*<<< orphan*/  size; int /*<<< orphan*/  physical; } ;
struct fw_desc {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct iwl_trans *trans,
					       const struct fw_desc *sec,
					       struct iwl_dram_data *dram)
{
	dram->block = FUNC0(trans->dev, sec->len,
					 &dram->physical,
					 GFP_KERNEL);
	if (!dram->block)
		return -ENOMEM;

	dram->size = sec->len;
	FUNC1(dram->block, sec->data, sec->len);

	return 0;
}