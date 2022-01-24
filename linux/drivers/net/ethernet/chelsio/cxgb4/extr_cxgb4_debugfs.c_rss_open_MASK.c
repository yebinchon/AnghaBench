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
struct seq_tab {scalar_t__ data; } ;
struct inode {struct adapter* i_private; } ;
struct file {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  rss_show ; 
 struct seq_tab* FUNC0 (struct file*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct file*) ; 
 int FUNC2 (struct adapter*) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct adapter *adap = inode->i_private;
	int ret, nentries;
	struct seq_tab *p;

	nentries = FUNC2(adap);
	p = FUNC0(file, nentries / 8, 8 * sizeof(u16), 0, rss_show);
	if (!p)
		return -ENOMEM;

	ret = FUNC3(adap, (u16 *)p->data);
	if (ret)
		FUNC1(inode, file);

	return ret;
}