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
struct inode {unsigned int i_private; } ;
struct file {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int CIM_IBQ_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  cimq_show ; 
 struct seq_tab* FUNC0 (struct file*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct file*) ; 
 int FUNC2 (struct adapter*,unsigned int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	int ret;
	struct seq_tab *p;
	unsigned int qid = (uintptr_t)inode->i_private & 7;
	struct adapter *adap = inode->i_private - qid;

	p = FUNC0(file, CIM_IBQ_SIZE, 4 * sizeof(u32), 0, cimq_show);
	if (!p)
		return -ENOMEM;

	ret = FUNC2(adap, qid, (u32 *)p->data, CIM_IBQ_SIZE * 4);
	if (ret < 0)
		FUNC1(inode, file);
	else
		ret = 0;
	return ret;
}