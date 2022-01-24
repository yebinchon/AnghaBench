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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int FUNC6 (struct rtl8169_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC9(struct rtl8169_private *tp)
{
	u16 dout_tapbin;
	u32 data;

	FUNC4(tp);

	/* CHN EST parameters adjust - giga master */
	FUNC8(tp, 0x1f, 0x0a43);
	FUNC8(tp, 0x13, 0x809b);
	FUNC7(tp, 0x14, 0x8000, 0xf800);
	FUNC8(tp, 0x13, 0x80a2);
	FUNC7(tp, 0x14, 0x8000, 0xff00);
	FUNC8(tp, 0x13, 0x80a4);
	FUNC7(tp, 0x14, 0x8500, 0xff00);
	FUNC8(tp, 0x13, 0x809c);
	FUNC7(tp, 0x14, 0xbd00, 0xff00);
	FUNC8(tp, 0x1f, 0x0000);

	/* CHN EST parameters adjust - giga slave */
	FUNC8(tp, 0x1f, 0x0a43);
	FUNC8(tp, 0x13, 0x80ad);
	FUNC7(tp, 0x14, 0x7000, 0xf800);
	FUNC8(tp, 0x13, 0x80b4);
	FUNC7(tp, 0x14, 0x5000, 0xff00);
	FUNC8(tp, 0x13, 0x80ac);
	FUNC7(tp, 0x14, 0x4000, 0xff00);
	FUNC8(tp, 0x1f, 0x0000);

	/* CHN EST parameters adjust - fnet */
	FUNC8(tp, 0x1f, 0x0a43);
	FUNC8(tp, 0x13, 0x808e);
	FUNC7(tp, 0x14, 0x1200, 0xff00);
	FUNC8(tp, 0x13, 0x8090);
	FUNC7(tp, 0x14, 0xe500, 0xff00);
	FUNC8(tp, 0x13, 0x8092);
	FUNC7(tp, 0x14, 0x9f00, 0xff00);
	FUNC8(tp, 0x1f, 0x0000);

	/* enable R-tune & PGA-retune function */
	dout_tapbin = 0;
	FUNC8(tp, 0x1f, 0x0a46);
	data = FUNC6(tp, 0x13);
	data &= 3;
	data <<= 2;
	dout_tapbin |= data;
	data = FUNC6(tp, 0x12);
	data &= 0xc000;
	data >>= 14;
	dout_tapbin |= data;
	dout_tapbin = ~(dout_tapbin^0x08);
	dout_tapbin <<= 12;
	dout_tapbin &= 0xf000;
	FUNC8(tp, 0x1f, 0x0a43);
	FUNC8(tp, 0x13, 0x827a);
	FUNC7(tp, 0x14, dout_tapbin, 0xf000);
	FUNC8(tp, 0x13, 0x827b);
	FUNC7(tp, 0x14, dout_tapbin, 0xf000);
	FUNC8(tp, 0x13, 0x827c);
	FUNC7(tp, 0x14, dout_tapbin, 0xf000);
	FUNC8(tp, 0x13, 0x827d);
	FUNC7(tp, 0x14, dout_tapbin, 0xf000);

	FUNC8(tp, 0x1f, 0x0a43);
	FUNC8(tp, 0x13, 0x0811);
	FUNC7(tp, 0x14, 0x0800, 0x0000);
	FUNC8(tp, 0x1f, 0x0a42);
	FUNC7(tp, 0x16, 0x0002, 0x0000);
	FUNC8(tp, 0x1f, 0x0000);

	/* enable GPHY 10M */
	FUNC1(tp->phydev, 0x0a44, 0x11, 0, FUNC0(11));

	/* SAR ADC performance */
	FUNC1(tp->phydev, 0x0bca, 0x17, FUNC0(12) | FUNC0(13), FUNC0(14));

	FUNC8(tp, 0x1f, 0x0a43);
	FUNC8(tp, 0x13, 0x803f);
	FUNC7(tp, 0x14, 0x0000, 0x3000);
	FUNC8(tp, 0x13, 0x8047);
	FUNC7(tp, 0x14, 0x0000, 0x3000);
	FUNC8(tp, 0x13, 0x804f);
	FUNC7(tp, 0x14, 0x0000, 0x3000);
	FUNC8(tp, 0x13, 0x8057);
	FUNC7(tp, 0x14, 0x0000, 0x3000);
	FUNC8(tp, 0x13, 0x805f);
	FUNC7(tp, 0x14, 0x0000, 0x3000);
	FUNC8(tp, 0x13, 0x8067);
	FUNC7(tp, 0x14, 0x0000, 0x3000);
	FUNC8(tp, 0x13, 0x806f);
	FUNC7(tp, 0x14, 0x0000, 0x3000);
	FUNC8(tp, 0x1f, 0x0000);

	/* disable phy pfm mode */
	FUNC1(tp->phydev, 0x0a44, 0x11, FUNC0(7), 0);

	FUNC2(tp);
	FUNC3(tp);
	FUNC5(tp);
}