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
typedef  int /*<<< orphan*/  u64 ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 int DSAF_PPE_INODE_BASE ; 
 int /*<<< orphan*/ * FUNC0 (struct dsaf_device*,int /*<<< orphan*/ *,int) ; 

void FUNC1(struct dsaf_device *ddev, u64 *data, int port)
{
	u64 *p = data;
	int node_num = port;

	/* for ge/xge node info */
	p = FUNC0(ddev, p, node_num);

	/* for ppe node info */
	node_num = port + DSAF_PPE_INODE_BASE;
	(void)FUNC0(ddev, p, node_num);
}