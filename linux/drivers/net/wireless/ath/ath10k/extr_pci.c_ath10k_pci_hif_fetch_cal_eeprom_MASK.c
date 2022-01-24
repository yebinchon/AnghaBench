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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {size_t cal_data_len; } ;
struct ath10k {TYPE_1__ hw_params; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar, void **data,
					   size_t *data_len)
{
	u8 *caldata = NULL;
	size_t calsize, i;
	int ret;

	if (!FUNC0(ar))
		return -EOPNOTSUPP;

	calsize = ar->hw_params.cal_data_len;
	caldata = FUNC5(calsize, GFP_KERNEL);
	if (!caldata)
		return -ENOMEM;

	FUNC1(ar);

	for (i = 0; i < calsize; i++) {
		ret = FUNC2(ar, i, &caldata[i]);
		if (ret)
			goto err_free;
	}

	if (!FUNC3(caldata, calsize))
		goto err_free;

	*data = caldata;
	*data_len = calsize;

	return 0;

err_free:
	FUNC4(caldata);

	return -EINVAL;
}