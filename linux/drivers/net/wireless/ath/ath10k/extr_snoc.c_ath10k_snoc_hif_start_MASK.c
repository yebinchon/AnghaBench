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
struct ath10k_snoc {int /*<<< orphan*/  flags; } ;
struct ath10k {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  ATH10K_SNOC_FLAG_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 struct ath10k_snoc* FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar)
{
	struct ath10k_snoc *ar_snoc = FUNC2(ar);

	FUNC5(&ar->napi);
	FUNC1(ar);
	FUNC3(ar);

	FUNC4(ATH10K_SNOC_FLAG_RECOVERY, &ar_snoc->flags);

	FUNC0(ar, ATH10K_DBG_BOOT, "boot hif start\n");

	return 0;
}