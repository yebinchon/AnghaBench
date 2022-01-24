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
typedef  scalar_t__ u32 ;
struct seq_file {struct adapter* private; } ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_DIAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAM_DEV_DIAG_TMP ; 
 int /*<<< orphan*/  FW_PARAM_DEV_DIAG_VDD ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *seq, void *v)
{
	struct adapter *adap = seq->private;
	u32 param[7], val[7];
	int ret;

	/* Note that if the sensors haven't been initialized and turned on
	 * we'll get values of 0, so treat those as "<unknown>" ...
	 */
	param[0] = (FUNC0(FW_PARAMS_MNEM_DEV) |
		    FUNC1(FW_PARAMS_PARAM_DEV_DIAG) |
		    FUNC2(FW_PARAM_DEV_DIAG_TMP));
	param[1] = (FUNC0(FW_PARAMS_MNEM_DEV) |
		    FUNC1(FW_PARAMS_PARAM_DEV_DIAG) |
		    FUNC2(FW_PARAM_DEV_DIAG_VDD));
	ret = FUNC5(adap, adap->mbox, adap->pf, 0, 2,
			      param, val);

	if (ret < 0 || val[0] == 0)
		FUNC4(seq, "Temperature: <unknown>\n");
	else
		FUNC3(seq, "Temperature: %dC\n", val[0]);

	if (ret < 0 || val[1] == 0)
		FUNC4(seq, "Core VDD:    <unknown>\n");
	else
		FUNC3(seq, "Core VDD:    %dmV\n", val[1]);

	return 0;
}