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
struct ksz_hw {int multi_list_size; scalar_t__ io; int /*<<< orphan*/ * multi_bits; int /*<<< orphan*/ * multi_list; } ;

/* Variables and functions */
 int HW_MULTICAST_SIZE ; 
 scalar_t__ KS884X_MULTICAST_0_OFFSET ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ksz_hw *hw)
{
	int i;
	int index;
	int position;
	int value;

	FUNC1(hw->multi_bits, 0, sizeof(u8) * HW_MULTICAST_SIZE);

	for (i = 0; i < hw->multi_list_size; i++) {
		position = (FUNC0(6, hw->multi_list[i]) >> 26) & 0x3f;
		index = position >> 3;
		value = 1 << (position & 7);
		hw->multi_bits[index] |= (u8) value;
	}

	for (i = 0; i < HW_MULTICAST_SIZE; i++)
		FUNC2(hw->multi_bits[i], hw->io + KS884X_MULTICAST_0_OFFSET +
			i);
}