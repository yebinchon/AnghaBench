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
struct seq_tab {scalar_t__ data; } ;
struct inode {struct adapter* i_private; } ;
struct file {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int TPLA_SIZE ; 
 int /*<<< orphan*/  TP_DBG_LA_CONFIG_A ; 
 struct seq_tab* FUNC1 (struct file*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tp_la_show ; 
 int /*<<< orphan*/  tp_la_show2 ; 
 int /*<<< orphan*/  tp_la_show3 ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct seq_tab *p;
	struct adapter *adap = inode->i_private;

	switch (FUNC0(FUNC2(adap, TP_DBG_LA_CONFIG_A))) {
	case 2:
		p = FUNC1(file, TPLA_SIZE / 2, 2 * sizeof(u64), 0,
				 tp_la_show2);
		break;
	case 3:
		p = FUNC1(file, TPLA_SIZE / 2, 2 * sizeof(u64), 0,
				 tp_la_show3);
		break;
	default:
		p = FUNC1(file, TPLA_SIZE, sizeof(u64), 0, tp_la_show);
	}
	if (!p)
		return -ENOMEM;

	FUNC3(adap, (u64 *)p->data, NULL);
	return 0;
}