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
typedef  int u8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IEEE80211_PPE_THRES_INFO_PPET_SIZE ; 

__attribute__((used)) static u8 FUNC1(u8 *ppe, u8 ppe_pos_bit)
{
	u8 byte_num = ppe_pos_bit / 8;
	u8 bit_num = ppe_pos_bit % 8;
	u8 residue_bits;
	u8 res;

	if (bit_num <= 5)
		return (ppe[byte_num] >> bit_num) &
		       (FUNC0(IEEE80211_PPE_THRES_INFO_PPET_SIZE) - 1);

	/*
	 * If bit_num > 5, we have to combine bits with next byte.
	 * Calculate how many bits we need to take from current byte (called
	 * here "residue_bits"), and add them to bits from next byte.
	 */

	residue_bits = 8 - bit_num;

	res = (ppe[byte_num + 1] &
	       (FUNC0(IEEE80211_PPE_THRES_INFO_PPET_SIZE - residue_bits) - 1)) <<
	      residue_bits;
	res += (ppe[byte_num] >> bit_num) & (FUNC0(residue_bits) - 1);

	return res;
}