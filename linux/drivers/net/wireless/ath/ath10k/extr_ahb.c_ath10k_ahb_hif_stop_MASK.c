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
struct ath10k_ahb {int /*<<< orphan*/  irq; } ;
struct ath10k {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 struct ath10k_ahb* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ath10k *ar)
{
	struct ath10k_ahb *ar_ahb = FUNC1(ar);

	FUNC2(ar, ATH10K_DBG_BOOT, "boot ahb hif stop\n");

	FUNC0(ar);
	FUNC6(ar_ahb->irq);

	FUNC5(&ar->napi);
	FUNC4(&ar->napi);

	FUNC3(ar);
}