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
typedef  int /*<<< orphan*/  u32 ;
struct sdio_func {int dummy; } ;
struct ath10k_sdio {struct sdio_func* func; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SDIO ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath10k_sdio* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar, u32 addr, u32 *val)
{
	struct ath10k_sdio *ar_sdio = FUNC1(ar);
	struct sdio_func *func = ar_sdio->func;
	int ret;

	FUNC3(func);
	*val = FUNC4(func, addr, &ret);
	if (ret) {
		FUNC2(ar, "failed to read from address 0x%x: %d\n",
			    addr, ret);
		goto out;
	}

	FUNC0(ar, ATH10K_DBG_SDIO, "sdio read32 addr 0x%x val 0x%x\n",
		   addr, *val);

out:
	FUNC5(func);

	return ret;
}