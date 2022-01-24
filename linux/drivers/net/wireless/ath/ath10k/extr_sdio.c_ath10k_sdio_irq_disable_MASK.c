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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct completion {int dummy; } ;
struct ath10k_sdio_irq_enable_regs {int dummy; } ;
struct ath10k_sdio_irq_data {int /*<<< orphan*/  mtx; struct ath10k_sdio_irq_enable_regs* irq_en_reg; } ;
struct ath10k_sdio {int /*<<< orphan*/  func; int /*<<< orphan*/  wr_async_work; int /*<<< orphan*/  workqueue; struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBOX_INT_STATUS_ENABLE_ADDRESS ; 
 int /*<<< orphan*/  SDIO_IRQ_DISABLE_TIMEOUT_HZ ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,struct sk_buff*,struct completion*,int,int /*<<< orphan*/ ) ; 
 struct ath10k_sdio* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,...) ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct completion*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ath10k_sdio_irq_enable_regs*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k_sdio_irq_enable_regs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int FUNC15 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC1(ar);
	struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
	struct ath10k_sdio_irq_enable_regs *regs = irq_data->irq_en_reg;
	struct sk_buff *skb;
	struct completion irqs_disabled_comp;
	int ret;

	skb = FUNC3(sizeof(*regs));
	if (!skb)
		return;

	FUNC8(&irq_data->mtx);

	FUNC7(regs, 0, sizeof(*regs)); /* disable all interrupts */
	FUNC6(skb->data, regs, sizeof(*regs));
	FUNC14(skb, sizeof(*regs));

	FUNC9(&irq_data->mtx);

	FUNC4(&irqs_disabled_comp);
	ret = FUNC0(ar, MBOX_INT_STATUS_ENABLE_ADDRESS,
					 skb, &irqs_disabled_comp, false, 0);
	if (ret)
		goto out;

	FUNC10(ar_sdio->workqueue, &ar_sdio->wr_async_work);

	/* Wait for the completion of the IRQ disable request.
	 * If there is a timeout we will try to disable irq's anyway.
	 */
	ret = FUNC15(&irqs_disabled_comp,
					  SDIO_IRQ_DISABLE_TIMEOUT_HZ);
	if (!ret)
		FUNC2(ar, "sdio irq disable request timed out\n");

	FUNC11(ar_sdio->func);

	ret = FUNC13(ar_sdio->func);
	if (ret)
		FUNC2(ar, "failed to release sdio interrupt: %d\n", ret);

	FUNC12(ar_sdio->func);

out:
	FUNC5(skb);
}