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
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct ath10k*,void*,size_t) ; 
 int FUNC1 (struct ath10k*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar)
{
	size_t data_len;
	void *data = NULL;
	int ret;

	ret = FUNC1(ar, &data, &data_len);
	if (ret) {
		if (ret != -EOPNOTSUPP)
			FUNC2(ar, "failed to read calibration data from EEPROM: %d\n",
				    ret);
		goto out_free;
	}

	ret = FUNC0(ar, data, data_len);
	if (ret) {
		FUNC2(ar, "failed to download calibration data from EEPROM: %d\n",
			    ret);
		goto out_free;
	}

	ret = 0;

out_free:
	FUNC3(data);

	return ret;
}