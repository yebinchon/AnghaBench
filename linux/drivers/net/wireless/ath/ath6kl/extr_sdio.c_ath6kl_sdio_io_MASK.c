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
typedef  int u32 ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_SDIO ; 
 int /*<<< orphan*/  ATH6KL_DBG_SDIO_DUMP ; 
 int HIF_FIXED_ADDRESS ; 
 int HIF_MBOX0_EXT_BASE_ADDR ; 
 int HIF_MBOX0_EXT_WIDTH ; 
 int HIF_MBOX_BASE_ADDR ; 
 int HIF_MBOX_END_ADDR ; 
 int HIF_MBOX_WIDTH ; 
 int HIF_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int FUNC3 (struct sdio_func*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (struct sdio_func*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct sdio_func*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int FUNC7 (struct sdio_func*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct sdio_func *func, u32 request, u32 addr,
			  u8 *buf, u32 len)
{
	int ret = 0;

	FUNC2(func);

	if (request & HIF_WRITE) {
		/* FIXME: looks like ugly workaround for something */
		if (addr >= HIF_MBOX_BASE_ADDR &&
		    addr <= HIF_MBOX_END_ADDR)
			addr += (HIF_MBOX_WIDTH - len);

		/* FIXME: this also looks like ugly workaround */
		if (addr == HIF_MBOX0_EXT_BASE_ADDR)
			addr += HIF_MBOX0_EXT_WIDTH - len;

		if (request & HIF_FIXED_ADDRESS)
			ret = FUNC7(func, addr, buf, len);
		else
			ret = FUNC4(func, addr, buf, len);
	} else {
		if (request & HIF_FIXED_ADDRESS)
			ret = FUNC5(func, buf, addr, len);
		else
			ret = FUNC3(func, buf, addr, len);
	}

	FUNC6(func);

	FUNC0(ATH6KL_DBG_SDIO, "%s addr 0x%x%s buf 0x%p len %d\n",
		   request & HIF_WRITE ? "wr" : "rd", addr,
		   request & HIF_FIXED_ADDRESS ? " (fixed)" : "", buf, len);
	FUNC1(ATH6KL_DBG_SDIO_DUMP, NULL, "sdio ", buf, len);

	FUNC8(addr, request, buf, len);

	return ret;
}