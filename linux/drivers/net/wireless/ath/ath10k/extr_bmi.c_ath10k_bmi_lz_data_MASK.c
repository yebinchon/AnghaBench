#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  payload; void* len; } ;
struct bmi_cmd {TYPE_2__ lz_data; void* id; } ;
struct TYPE_3__ {scalar_t__ done_sent; } ;
struct ath10k {TYPE_1__ bmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BMI ; 
 int BMI_LZ_DATA ; 
 int BMI_MAX_DATA_SIZE ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,void const*,int) ; 
 int FUNC3 (struct ath10k*,struct bmi_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,int) ; 
 int FUNC6 (int,int) ; 

int FUNC7(struct ath10k *ar, const void *buffer, u32 length)
{
	struct bmi_cmd cmd;
	u32 hdrlen = sizeof(cmd.id) + sizeof(cmd.lz_data);
	u32 txlen;
	int ret;

	FUNC2(ar, ATH10K_DBG_BMI, "bmi lz data buffer 0x%pK length %d\n",
		   buffer, length);

	if (ar->bmi.done_sent) {
		FUNC4(ar, "command disallowed\n");
		return -EBUSY;
	}

	while (length) {
		txlen = FUNC6(length, BMI_MAX_DATA_SIZE - hdrlen);

		FUNC0(txlen & 3);

		cmd.id          = FUNC1(BMI_LZ_DATA);
		cmd.lz_data.len = FUNC1(txlen);
		FUNC5(cmd.lz_data.payload, buffer, txlen);

		ret = FUNC3(ar, &cmd, hdrlen + txlen,
						  NULL, NULL);
		if (ret) {
			FUNC4(ar, "unable to write to the device\n");
			return ret;
		}

		buffer += txlen;
		length -= txlen;
	}

	return 0;
}