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
struct hinfc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINFC504_CMD ; 
 int /*<<< orphan*/  HINFC504_OP ; 
 int HINFC504_OP_CMD1_EN ; 
 int HINFC504_OP_NF_CS_MASK ; 
 int HINFC504_OP_NF_CS_SHIFT ; 
 int HINFC504_OP_WAIT_READY_EN ; 
 int NAND_CMD_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct hinfc_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hinfc_host*) ; 

__attribute__((used)) static int FUNC2(struct hinfc_host *host, int chipselect)
{
	FUNC0(host, NAND_CMD_RESET, HINFC504_CMD);

	FUNC0(host, HINFC504_OP_CMD1_EN
		| ((chipselect & HINFC504_OP_NF_CS_MASK)
			<< HINFC504_OP_NF_CS_SHIFT)
		| HINFC504_OP_WAIT_READY_EN,
		HINFC504_OP);

	FUNC1(host);

	return 0;
}