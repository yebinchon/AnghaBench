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
struct seq_file {scalar_t__ private; } ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOC_ASICMODE ; 
 int DOC_ASICMODE_BDETCT_RESET ; 
 int DOC_ASICMODE_MDWREN ; 
#define  DOC_ASICMODE_NORMAL 130 
#define  DOC_ASICMODE_POWERDOWN 129 
 int DOC_ASICMODE_RAM_WE ; 
#define  DOC_ASICMODE_RESET 128 
 int DOC_ASICMODE_RSTIN_RESET ; 
 int FUNC0 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *p)
{
	struct docg3 *docg3 = (struct docg3 *)s->private;

	int pctrl, mode;

	FUNC1(&docg3->cascade->lock);
	pctrl = FUNC0(docg3, DOC_ASICMODE);
	mode = pctrl & 0x03;
	FUNC2(&docg3->cascade->lock);

	FUNC3(s,
		   "%04x : RAM_WE=%d,RSTIN_RESET=%d,BDETCT_RESET=%d,WRITE_ENABLE=%d,POWERDOWN=%d,MODE=%d%d (",
		   pctrl,
		   pctrl & DOC_ASICMODE_RAM_WE ? 1 : 0,
		   pctrl & DOC_ASICMODE_RSTIN_RESET ? 1 : 0,
		   pctrl & DOC_ASICMODE_BDETCT_RESET ? 1 : 0,
		   pctrl & DOC_ASICMODE_MDWREN ? 1 : 0,
		   pctrl & DOC_ASICMODE_POWERDOWN ? 1 : 0,
		   mode >> 1, mode & 0x1);

	switch (mode) {
	case DOC_ASICMODE_RESET:
		FUNC4(s, "reset");
		break;
	case DOC_ASICMODE_NORMAL:
		FUNC4(s, "normal");
		break;
	case DOC_ASICMODE_POWERDOWN:
		FUNC4(s, "powerdown");
		break;
	}
	FUNC4(s, ")\n");
	return 0;
}