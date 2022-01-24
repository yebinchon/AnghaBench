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
typedef  int /*<<< orphan*/  u16 ;
struct hinic_api_cmd_chain {int /*<<< orphan*/  chain_type; struct hinic_api_cmd_cell* curr_node; } ;
struct hinic_api_cmd_cell {int /*<<< orphan*/  ctrl; } ;
typedef  enum hinic_node_id { ____Placeholder_hinic_node_id } hinic_node_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_api_cmd_chain*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hinic_api_cmd_chain *chain,
			 enum  hinic_node_id dest,
			 void *cmd, u16 cmd_size)
{
	struct hinic_api_cmd_cell *curr_node = chain->curr_node;
	u16 data_size = FUNC0(chain->chain_type);

	FUNC2(&curr_node->ctrl, data_size);
	FUNC1(chain, dest, cmd, cmd_size);
}