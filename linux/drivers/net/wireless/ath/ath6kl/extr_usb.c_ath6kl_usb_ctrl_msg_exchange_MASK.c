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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ath6kl_usb {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ath6kl_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath6kl_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ath6kl_usb *ar_usb,
				     u8 req_val, u8 *req_buf, u32 req_len,
				     u8 resp_val, u8 *resp_buf, u32 *resp_len)
{
	int ret;

	/* send command */
	ret = FUNC1(ar_usb, req_val, 0, 0,
					 req_buf, req_len);

	if (ret != 0)
		return ret;

	if (resp_buf == NULL) {
		/* no expected response */
		return ret;
	}

	/* get response */
	ret = FUNC0(ar_usb, resp_val, 0, 0,
					resp_buf, *resp_len);

	return ret;
}