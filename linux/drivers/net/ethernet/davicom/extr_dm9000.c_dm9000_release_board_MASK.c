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
struct platform_device {int dummy; } ;
struct board_info {scalar_t__ addr_req; scalar_t__ data_req; int /*<<< orphan*/  io_data; int /*<<< orphan*/  io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct platform_device *pdev, struct board_info *db)
{
	/* unmap our resources */

	FUNC0(db->io_addr);
	FUNC0(db->io_data);

	/* release the resources */

	if (db->data_req)
		FUNC2(db->data_req);
	FUNC1(db->data_req);

	if (db->addr_req)
		FUNC2(db->addr_req);
	FUNC1(db->addr_req);
}