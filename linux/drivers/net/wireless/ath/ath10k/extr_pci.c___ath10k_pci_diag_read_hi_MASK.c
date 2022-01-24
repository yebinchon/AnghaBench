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
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar, void *dest,
				     u32 src, u32 len)
{
	u32 host_addr, addr;
	int ret;

	host_addr = FUNC3(src);

	ret = FUNC0(ar, host_addr, &addr);
	if (ret != 0) {
		FUNC2(ar, "failed to get memcpy hi address for firmware address %d: %d\n",
			    src, ret);
		return ret;
	}

	ret = FUNC1(ar, addr, dest, len);
	if (ret != 0) {
		FUNC2(ar, "failed to memcpy firmware memory from %d (%d B): %d\n",
			    addr, len, ret);
		return ret;
	}

	return 0;
}