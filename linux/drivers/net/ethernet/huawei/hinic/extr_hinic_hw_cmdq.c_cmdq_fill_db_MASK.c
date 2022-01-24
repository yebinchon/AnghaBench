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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  enum hinic_cmdq_type { ____Placeholder_hinic_cmdq_type } hinic_cmdq_type ;

/* Variables and functions */
 int /*<<< orphan*/  CMDQ_TYPE ; 
 int /*<<< orphan*/  DB_TYPE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int HINIC_CTRL_PATH ; 
 int HINIC_DB_CMDQ_TYPE ; 
 int /*<<< orphan*/  HI_PROD_IDX ; 
 int /*<<< orphan*/  PATH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(u32 *db_info,
			 enum hinic_cmdq_type cmdq_type, u16 prod_idx)
{
	*db_info = FUNC0(FUNC1(prod_idx), HI_PROD_IDX) |
		   FUNC0(HINIC_CTRL_PATH, PATH)               |
		   FUNC0(cmdq_type, CMDQ_TYPE)                |
		   FUNC0(HINIC_DB_CMDQ_TYPE, DB_TYPE);
}