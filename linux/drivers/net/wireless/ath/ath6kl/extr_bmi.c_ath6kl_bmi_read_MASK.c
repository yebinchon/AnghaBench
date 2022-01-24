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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ max_data_size; scalar_t__ max_cmd_size; scalar_t__* cmd_buf; scalar_t__ done_sent; } ;
struct ath6kl {TYPE_1__ bmi; } ;
typedef  int /*<<< orphan*/  rx_len ;
typedef  int /*<<< orphan*/  len ;
typedef  int /*<<< orphan*/  cid ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BMI ; 
 scalar_t__ BMI_READ_MEMORY ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct ath6kl*,scalar_t__*,scalar_t__) ; 
 int FUNC4 (struct ath6kl*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC7(struct ath6kl *ar, u32 addr, u8 *buf, u32 len)
{
	u32 cid = BMI_READ_MEMORY;
	int ret;
	u32 offset;
	u32 len_remain, rx_len;
	u16 size;

	if (ar->bmi.done_sent) {
		FUNC2("bmi done sent already, cmd %d disallowed\n", cid);
		return -EACCES;
	}

	size = ar->bmi.max_data_size + sizeof(cid) + sizeof(addr) + sizeof(len);
	if (size > ar->bmi.max_cmd_size) {
		FUNC0(1);
		return -EINVAL;
	}
	FUNC6(ar->bmi.cmd_buf, 0, size);

	FUNC1(ATH6KL_DBG_BMI,
		   "bmi read memory: device: addr: 0x%x, len: %d\n",
		   addr, len);

	len_remain = len;

	while (len_remain) {
		rx_len = (len_remain < ar->bmi.max_data_size) ?
					len_remain : ar->bmi.max_data_size;
		offset = 0;
		FUNC5(&(ar->bmi.cmd_buf[offset]), &cid, sizeof(cid));
		offset += sizeof(cid);
		FUNC5(&(ar->bmi.cmd_buf[offset]), &addr, sizeof(addr));
		offset += sizeof(addr);
		FUNC5(&(ar->bmi.cmd_buf[offset]), &rx_len, sizeof(rx_len));
		offset += sizeof(len);

		ret = FUNC4(ar, ar->bmi.cmd_buf, offset);
		if (ret) {
			FUNC2("Unable to write to the device: %d\n",
				   ret);
			return ret;
		}
		ret = FUNC3(ar, ar->bmi.cmd_buf, rx_len);
		if (ret) {
			FUNC2("Unable to read from the device: %d\n",
				   ret);
			return ret;
		}
		FUNC5(&buf[len - len_remain], ar->bmi.cmd_buf, rx_len);
		len_remain -= rx_len; addr += rx_len;
	}

	return 0;
}