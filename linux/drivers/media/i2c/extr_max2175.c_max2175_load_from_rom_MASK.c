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
struct max2175 {int rom_bbf_bw_am; int rom_bbf_bw_fm; int rom_bbf_bw_dab; scalar_t__ am_hiz; } ;

/* Variables and functions */
 int FUNC0 (struct max2175*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct max2175 *ctx)
{
	u8 data = 0;

	data = FUNC0(ctx, 0);
	ctx->rom_bbf_bw_am = data & 0x0f;
	FUNC1(ctx, 81, 3, 0, data >> 4);

	data = FUNC0(ctx, 1);
	ctx->rom_bbf_bw_fm = data & 0x0f;
	ctx->rom_bbf_bw_dab = data >> 4;

	data = FUNC0(ctx, 2);
	FUNC1(ctx, 82, 4, 0, data & 0x1f);
	FUNC1(ctx, 82, 7, 5, data >> 5);

	data = FUNC0(ctx, 3);
	if (ctx->am_hiz) {
		data &= 0x0f;
		data |= (FUNC0(ctx, 7) & 0x40) >> 2;
		if (!data)
			data |= 2;
	} else {
		data = (data & 0xf0) >> 4;
		data |= (FUNC0(ctx, 7) & 0x80) >> 3;
		if (!data)
			data |= 30;
	}
	FUNC1(ctx, 80, 5, 0, data + 31);

	data = FUNC0(ctx, 6);
	FUNC1(ctx, 81, 7, 6, data >> 6);
}