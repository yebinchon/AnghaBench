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
typedef  void u8 ;
typedef  scalar_t__ u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ DRAM_BASE_ADDRESS ; 
 scalar_t__ REGION_ACCESS_SIZE_LIMIT ; 
 scalar_t__ REGION_ACCESS_SIZE_MASK ; 
 int FUNC1 (struct ath10k*,scalar_t__,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar,
					       const void *buffer,
					       u32 address,
					       u32 length)
{
	u32 addr = address & REGION_ACCESS_SIZE_MASK;
	int ret, remain_size, size;
	const u8 *buf;

	FUNC2(ar, FUNC0(address));

	if (addr + length > REGION_ACCESS_SIZE_LIMIT) {
		size = REGION_ACCESS_SIZE_LIMIT - addr;
		remain_size = length - size;

		ret = FUNC1(ar, address, buffer, size);
		if (ret) {
			FUNC3(ar,
				    "failed to download the first %d bytes segment to address:0x%x: %d\n",
				    size, address, ret);
			goto done;
		}

		/* Change msb to the next memory region*/
		FUNC2(ar,
					 FUNC0(address) + 1);
		buf = buffer +  size;
		ret = FUNC1(ar,
					    address & ~REGION_ACCESS_SIZE_MASK,
					    buf, remain_size);
		if (ret) {
			FUNC3(ar,
				    "failed to download the second %d bytes segment to address:0x%x: %d\n",
				    remain_size,
				    address & ~REGION_ACCESS_SIZE_MASK,
				    ret);
			goto done;
		}
	} else {
		ret = FUNC1(ar, address, buffer, length);
		if (ret) {
			FUNC3(ar,
				    "failed to download the only %d bytes segment to address:0x%x: %d\n",
				    length, address, ret);
			goto done;
		}
	}

done:
	/* Change msb to DRAM */
	FUNC2(ar,
				 FUNC0(DRAM_BASE_ADDRESS));
	return ret;
}