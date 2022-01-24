#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct seq_file {scalar_t__ private; } ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int DOC_CTRL_CE ; 
 int DOC_CTRL_FLASHREADY ; 
 int DOC_CTRL_PROTECTION_ERROR ; 
 int DOC_CTRL_SEQUENCE_ERROR ; 
 int DOC_CTRL_VIOLATION ; 
 int /*<<< orphan*/  DOC_FLASHCONTROL ; 
 int FUNC0 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,char*,char*,char*,char*,char*) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *p)
{
	struct docg3 *docg3 = (struct docg3 *)s->private;

	u8 fctrl;

	FUNC1(&docg3->cascade->lock);
	fctrl = FUNC0(docg3, DOC_FLASHCONTROL);
	FUNC2(&docg3->cascade->lock);

	FUNC3(s, "FlashControl : 0x%02x (%s,CE# %s,%s,%s,flash %s)\n",
		   fctrl,
		   fctrl & DOC_CTRL_VIOLATION ? "protocol violation" : "-",
		   fctrl & DOC_CTRL_CE ? "active" : "inactive",
		   fctrl & DOC_CTRL_PROTECTION_ERROR ? "protection error" : "-",
		   fctrl & DOC_CTRL_SEQUENCE_ERROR ? "sequence error" : "-",
		   fctrl & DOC_CTRL_FLASHREADY ? "ready" : "not ready");

	return 0;
}