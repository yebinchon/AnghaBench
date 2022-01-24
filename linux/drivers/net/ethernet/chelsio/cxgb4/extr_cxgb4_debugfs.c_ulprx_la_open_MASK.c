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
typedef  int /*<<< orphan*/  u32 ;
struct seq_tab {scalar_t__ data; } ;
struct inode {struct adapter* i_private; } ;
struct file {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ULPRX_LA_SIZE ; 
 struct seq_tab* FUNC0 (struct file*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ulprx_la_show ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct seq_tab *p;
	struct adapter *adap = inode->i_private;

	p = FUNC0(file, ULPRX_LA_SIZE, 8 * sizeof(u32), 1,
			 ulprx_la_show);
	if (!p)
		return -ENOMEM;

	FUNC1(adap, (u32 *)p->data);
	return 0;
}