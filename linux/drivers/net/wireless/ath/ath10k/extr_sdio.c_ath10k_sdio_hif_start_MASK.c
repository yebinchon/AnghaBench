#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* ext_info; } ;
struct ath10k_sdio {int /*<<< orphan*/  func; TYPE_2__ mbox_info; int /*<<< orphan*/ * mbox_size; int /*<<< orphan*/ * mbox_addr; } ;
struct ath10k {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  htc_ext_sz; int /*<<< orphan*/  htc_ext_addr; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*,int) ; 
 int /*<<< orphan*/  ath10k_sdio_irq_handler ; 
 struct ath10k_sdio* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC3(ar);
	int ret;

	/* Sleep 20 ms before HIF interrupts are disabled.
	 * This will give target plenty of time to process the BMI done
	 * request before interrupts are disabled.
	 */
	FUNC5(20);
	ret = FUNC0(ar);
	if (ret)
		return ret;

	/* eid 0 always uses the lower part of the extended mailbox address
	 * space (ext_info[0].htc_ext_addr).
	 */
	ar_sdio->mbox_addr[0] = ar_sdio->mbox_info.ext_info[0].htc_ext_addr;
	ar_sdio->mbox_size[0] = ar_sdio->mbox_info.ext_info[0].htc_ext_sz;

	FUNC6(ar_sdio->func);

	/* Register the isr */
	ret =  FUNC7(ar_sdio->func, ath10k_sdio_irq_handler);
	if (ret) {
		FUNC4(ar, "failed to claim sdio interrupt: %d\n", ret);
		FUNC8(ar_sdio->func);
		return ret;
	}

	FUNC8(ar_sdio->func);

	ret = FUNC1(ar);
	if (ret)
		FUNC4(ar, "failed to enable sdio interrupts: %d\n", ret);

	/* Enable sleep and then disable it again */
	ret = FUNC2(ar, true);
	if (ret)
		return ret;

	/* Wait for 20ms for the written value to take effect */
	FUNC5(20);

	ret = FUNC2(ar, false);
	if (ret)
		return ret;

	return 0;
}