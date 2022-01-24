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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBOX_WINDOW_DATA_ADDRESS ; 
 int /*<<< orphan*/  MBOX_WINDOW_WRITE_ADDR_ADDRESS ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,void const*,int) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int,...) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar, u32 address,
					  const void *data, int nbytes)
{
	int ret;

	/* set write data */
	ret = FUNC0(ar, MBOX_WINDOW_DATA_ADDRESS, data, nbytes);
	if (ret) {
		FUNC2(ar,
			    "failed to write 0x%p to mbox window data address: %d\n",
			    data, ret);
		return ret;
	}

	/* set window register, which starts the write cycle */
	ret = FUNC1(ar, MBOX_WINDOW_WRITE_ADDR_ADDRESS, address);
	if (ret) {
		FUNC2(ar, "failed to set mbox window write address: %d", ret);
		return ret;
	}

	return 0;
}