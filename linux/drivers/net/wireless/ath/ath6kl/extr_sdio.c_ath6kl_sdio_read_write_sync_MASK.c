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
struct ath6kl_sdio {int /*<<< orphan*/  dma_buffer_mutex; int /*<<< orphan*/  func; int /*<<< orphan*/ * dma_buffer; } ;
struct ath6kl {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HIF_BLOCK_BASIS ; 
 int /*<<< orphan*/  HIF_MBOX_BLOCK_SIZE ; 
 int HIF_READ ; 
 int HIF_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int) ; 
 struct ath6kl_sdio* FUNC1 (struct ath6kl*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ath6kl *ar, u32 addr, u8 *buf,
				       u32 len, u32 request)
{
	struct ath6kl_sdio *ar_sdio = FUNC1(ar);
	u8  *tbuf = NULL;
	int ret;
	bool bounced = false;

	if (request & HIF_BLOCK_BASIS)
		len = FUNC6(len, HIF_MBOX_BLOCK_SIZE);

	if (FUNC2(buf)) {
		if (!ar_sdio->dma_buffer)
			return -ENOMEM;
		FUNC4(&ar_sdio->dma_buffer_mutex);
		tbuf = ar_sdio->dma_buffer;

		if (request & HIF_WRITE)
			FUNC3(tbuf, buf, len);

		bounced = true;
	} else {
		tbuf = buf;
	}

	ret = FUNC0(ar_sdio->func, request, addr, tbuf, len);
	if ((request & HIF_READ) && bounced)
		FUNC3(buf, tbuf, len);

	if (bounced)
		FUNC5(&ar_sdio->dma_buffer_mutex);

	return ret;
}