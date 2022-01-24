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
typedef  int u16 ;
struct max2175 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct max2175*,int,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*,char*,int,int) ; 

__attribute__((used)) static void FUNC4(struct max2175 *ctx, u8 m_sel,
				      u8 bank, const u16 *coeffs)
{
	unsigned int i;
	u8 coeff_addr, upper_address = 24;

	FUNC3(ctx, "set_filter_coeffs: m_sel %d bank %d\n", m_sel, bank);
	FUNC2(ctx, 114, 5, 4, m_sel);

	if (m_sel == 2)
		upper_address = 12;

	for (i = 0; i < upper_address; i++) {
		coeff_addr = i + bank * 24;
		FUNC0(ctx, 115, coeffs[i] >> 8);
		FUNC0(ctx, 116, coeffs[i]);
		FUNC0(ctx, 117, coeff_addr | 1 << 7);
	}
	FUNC1(ctx, 117, 7, 0);
}