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
struct sdio_func {int dummy; } ;
struct ath10k_sdio {int /*<<< orphan*/  func; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 unsigned long ATH10K_SDIO_HIF_COMMUNICATION_TIMEOUT_HZ ; 
 int ECANCELED ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ath10k_sdio* FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct sdio_func *func)
{
	struct ath10k_sdio *ar_sdio = FUNC4(func);
	struct ath10k *ar = ar_sdio->ar;
	unsigned long timeout;
	bool done = false;
	int ret;

	/* Release the host during interrupts so we can pick it back up when
	 * we process commands.
	 */
	FUNC5(ar_sdio->func);

	timeout = jiffies + ATH10K_SDIO_HIF_COMMUNICATION_TIMEOUT_HZ;
	do {
		ret = FUNC1(ar, &done);
		if (ret)
			break;
	} while (FUNC6(jiffies, timeout) && !done);

	FUNC0(ar);

	FUNC3(ar_sdio->func);

	if (ret && ret != -ECANCELED)
		FUNC2(ar, "failed to process pending SDIO interrupts: %d\n",
			    ret);
}