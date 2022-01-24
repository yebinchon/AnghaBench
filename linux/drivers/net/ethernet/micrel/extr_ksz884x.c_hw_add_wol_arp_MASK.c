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
struct ksz_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int,int,int const*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int) ; 

__attribute__((used)) static void FUNC2(struct ksz_hw *hw, const u8 *ip_addr)
{
	static const u8 mask[6] = { 0x3F, 0xF0, 0x3F, 0x00, 0xC0, 0x03 };
	u8 pattern[42] = {
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x08, 0x06,
		0x00, 0x01, 0x08, 0x00, 0x06, 0x04, 0x00, 0x01,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00 };

	FUNC1(&pattern[38], ip_addr, 4);
	FUNC0(hw, 3, 6, mask, 42, pattern);
}