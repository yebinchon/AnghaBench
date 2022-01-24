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
struct qed_mcp_cmd_elem {int /*<<< orphan*/  list; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_mcp_cmd_elem*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct qed_hwfn *p_hwfn,
				 struct qed_mcp_cmd_elem *p_cmd_elem)
{
	FUNC1(&p_cmd_elem->list);
	FUNC0(p_cmd_elem);
}