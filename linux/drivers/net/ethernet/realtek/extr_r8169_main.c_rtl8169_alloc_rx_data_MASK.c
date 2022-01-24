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
struct rtl8169_private {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
struct RxDesc {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  R8169_RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct RxDesc*) ; 
 struct device* FUNC10 (struct rtl8169_private*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page *FUNC12(struct rtl8169_private *tp,
					  struct RxDesc *desc)
{
	struct device *d = FUNC10(tp);
	int node = FUNC3(d);
	dma_addr_t mapping;
	struct page *data;

	data = FUNC1(node, GFP_KERNEL, FUNC6(R8169_RX_BUF_SIZE));
	if (!data)
		return NULL;

	mapping = FUNC4(d, data, 0, R8169_RX_BUF_SIZE, DMA_FROM_DEVICE);
	if (FUNC11(FUNC5(d, mapping))) {
		if (FUNC7())
			FUNC8(tp, drv, tp->dev, "Failed to map RX DMA!\n");
		FUNC0(data, FUNC6(R8169_RX_BUF_SIZE));
		return NULL;
	}

	desc->addr = FUNC2(mapping);
	FUNC9(desc);

	return data;
}