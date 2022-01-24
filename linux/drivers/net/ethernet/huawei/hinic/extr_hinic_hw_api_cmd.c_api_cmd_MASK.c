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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hinic_api_cmd_chain {size_t prod_idx; int /*<<< orphan*/  sem; int /*<<< orphan*/  curr_node; struct hinic_api_cmd_cell_ctxt* cell_ctxt; } ;
struct hinic_api_cmd_cell_ctxt {int /*<<< orphan*/  cell_vaddr; } ;
typedef  enum hinic_node_id { ____Placeholder_hinic_node_id } hinic_node_id ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_api_cmd_chain*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct hinic_api_cmd_chain*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct hinic_api_cmd_chain *chain,
		   enum hinic_node_id dest, u8 *cmd, u16 cmd_size)
{
	struct hinic_api_cmd_cell_ctxt *ctxt;
	int err;

	FUNC2(&chain->sem);
	if (FUNC0(chain)) {
		FUNC5(&chain->sem);
		return -EBUSY;
	}

	FUNC3(chain, dest, cmd, cmd_size);
	FUNC1(chain);

	FUNC7();  /* inc pi before issue the command */

	FUNC4(chain);    /* issue the command */

	ctxt = &chain->cell_ctxt[chain->prod_idx];

	chain->curr_node = ctxt->cell_vaddr;

	err = FUNC6(chain);

	FUNC5(&chain->sem);
	return err;
}