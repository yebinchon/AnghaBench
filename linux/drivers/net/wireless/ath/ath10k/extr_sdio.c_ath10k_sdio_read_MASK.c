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
 int /*<<< orphan*/  ATH10K_DBG_SDIO_DUMP ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,void*,size_t) ; 
 struct ath10k_sdio* FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int FUNC5 (struct sdio_func*,void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar, u32 addr, void *buf, size_t len)
{
	struct ath10k_sdio *ar_sdio = FUNC2(ar);
	struct sdio_func *func = ar_sdio->func;
	int ret;

	FUNC4(func);

	ret = FUNC5(func, buf, addr, len);
	if (ret) {
		FUNC3(ar, "failed to read from address 0x%x: %d\n",
			    addr, ret);
		goto out;
	}

	FUNC0(ar, ATH10K_DBG_SDIO, "sdio read addr 0x%x buf 0x%p len %zu\n",
		   addr, buf, len);
	FUNC1(ar, ATH10K_DBG_SDIO_DUMP, NULL, "sdio read ", buf, len);

out:
	FUNC6(func);

	return ret;
}