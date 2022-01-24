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
typedef  int u32 ;
typedef  int u16 ;
struct rtl8169_private {int /*<<< orphan*/  phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int FUNC8 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC11(struct rtl8169_private *tp)
{
	u16 ioffset_p3, ioffset_p2, ioffset_p1, ioffset_p0;
	u16 rlen;
	u32 data;

	FUNC6(tp);

	/* CHIN EST parameter update */
	FUNC10(tp, 0x1f, 0x0a43);
	FUNC10(tp, 0x13, 0x808a);
	FUNC9(tp, 0x14, 0x000a, 0x003f);
	FUNC10(tp, 0x1f, 0x0000);

	/* enable R-tune & PGA-retune function */
	FUNC10(tp, 0x1f, 0x0a43);
	FUNC10(tp, 0x13, 0x0811);
	FUNC9(tp, 0x14, 0x0800, 0x0000);
	FUNC10(tp, 0x1f, 0x0a42);
	FUNC9(tp, 0x16, 0x0002, 0x0000);
	FUNC10(tp, 0x1f, 0x0000);

	/* enable GPHY 10M */
	FUNC1(tp->phydev, 0x0a44, 0x11, 0, FUNC0(11));

	FUNC3(tp, 0xdd02, 0x807d);
	data = FUNC2(tp, 0xdd02);
	ioffset_p3 = ((data & 0x80)>>7);
	ioffset_p3 <<= 3;

	data = FUNC2(tp, 0xdd00);
	ioffset_p3 |= ((data & (0xe000))>>13);
	ioffset_p2 = ((data & (0x1e00))>>9);
	ioffset_p1 = ((data & (0x01e0))>>5);
	ioffset_p0 = ((data & 0x0010)>>4);
	ioffset_p0 <<= 3;
	ioffset_p0 |= (data & (0x07));
	data = (ioffset_p3<<12)|(ioffset_p2<<8)|(ioffset_p1<<4)|(ioffset_p0);

	if ((ioffset_p3 != 0x0f) || (ioffset_p2 != 0x0f) ||
	    (ioffset_p1 != 0x0f) || (ioffset_p0 != 0x0f)) {
		FUNC10(tp, 0x1f, 0x0bcf);
		FUNC10(tp, 0x16, data);
		FUNC10(tp, 0x1f, 0x0000);
	}

	/* Modify rlen (TX LPF corner frequency) level */
	FUNC10(tp, 0x1f, 0x0bcd);
	data = FUNC8(tp, 0x16);
	data &= 0x000f;
	rlen = 0;
	if (data > 3)
		rlen = data - 3;
	data = rlen | (rlen<<4) | (rlen<<8) | (rlen<<12);
	FUNC10(tp, 0x17, data);
	FUNC10(tp, 0x1f, 0x0bcd);
	FUNC10(tp, 0x1f, 0x0000);

	/* disable phy pfm mode */
	FUNC1(tp->phydev, 0x0a44, 0x11, FUNC0(7), 0);

	FUNC5(tp);
	FUNC4(tp);
	FUNC7(tp);
}