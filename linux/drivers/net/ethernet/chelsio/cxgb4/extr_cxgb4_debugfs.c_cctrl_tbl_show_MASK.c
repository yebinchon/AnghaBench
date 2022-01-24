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
typedef  int /*<<< orphan*/  u16 ;
struct seq_file {struct adapter* private; } ;
struct TYPE_2__ {size_t* b_wnd; int /*<<< orphan*/ * a_wnd; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NCCTRL_WIN ; 
 int /*<<< orphan*/  NMTUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *v)
{
	static const char * const dec_fac[] = {
		"0.5", "0.5625", "0.625", "0.6875", "0.75", "0.8125", "0.875",
		"0.9375" };

	int i;
	u16 (*incr)[NCCTRL_WIN];
	struct adapter *adap = seq->private;

	incr = FUNC1(NMTUS, sizeof(*incr), GFP_KERNEL);
	if (!incr)
		return -ENOMEM;

	FUNC3(adap, incr);

	for (i = 0; i < NCCTRL_WIN; ++i) {
		FUNC2(seq, "%2d: %4u %4u %4u %4u %4u %4u %4u %4u\n", i,
			   incr[0][i], incr[1][i], incr[2][i], incr[3][i],
			   incr[4][i], incr[5][i], incr[6][i], incr[7][i]);
		FUNC2(seq, "%8u %4u %4u %4u %4u %4u %4u %4u %5u %s\n",
			   incr[8][i], incr[9][i], incr[10][i], incr[11][i],
			   incr[12][i], incr[13][i], incr[14][i], incr[15][i],
			   adap->params.a_wnd[i],
			   dec_fac[adap->params.b_wnd[i]]);
	}

	FUNC0(incr);
	return 0;
}