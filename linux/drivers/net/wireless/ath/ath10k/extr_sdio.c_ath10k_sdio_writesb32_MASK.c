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
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SDIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath10k_sdio* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int FUNC8 (struct sdio_func*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct ath10k *ar, u32 addr, u32 val)
{
	struct ath10k_sdio *ar_sdio = FUNC1(ar);
	struct sdio_func *func = ar_sdio->func;
	__le32 *buf;
	int ret;

	buf = FUNC5(sizeof(*buf), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	*buf = FUNC3(val);

	FUNC6(func);

	ret = FUNC8(func, addr, buf, sizeof(*buf));
	if (ret) {
		FUNC2(ar, "failed to write value 0x%x to fixed sb address 0x%x: %d\n",
			    val, addr, ret);
		goto out;
	}

	FUNC0(ar, ATH10K_DBG_SDIO, "sdio writesb32 addr 0x%x val 0x%x\n",
		   addr, val);

out:
	FUNC7(func);

	FUNC4(buf);

	return ret;
}