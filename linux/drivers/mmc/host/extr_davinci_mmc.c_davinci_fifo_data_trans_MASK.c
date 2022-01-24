#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mmc_davinci_host {unsigned int buffer_bytes_left; unsigned int bytes_left; scalar_t__ data_dir; int /*<<< orphan*/ * buffer; scalar_t__ base; TYPE_1__* data; int /*<<< orphan*/  sg; } ;
struct TYPE_2__ {int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 scalar_t__ DAVINCI_MMCDRR ; 
 scalar_t__ DAVINCI_MMCDXR ; 
 scalar_t__ DAVINCI_MMC_DATADIR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_davinci_host*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mmc_davinci_host *host,
					unsigned int n)
{
	u8 *p;
	unsigned int i;

	if (host->buffer_bytes_left == 0) {
		host->sg = FUNC4(host->data->sg);
		FUNC2(host);
	}

	p = host->buffer;
	if (n > host->buffer_bytes_left)
		n = host->buffer_bytes_left;
	host->buffer_bytes_left -= n;
	host->bytes_left -= n;

	/* NOTE:  we never transfer more than rw_threshold bytes
	 * to/from the fifo here; there's no I/O overlap.
	 * This also assumes that access width( i.e. ACCWD) is 4 bytes
	 */
	if (host->data_dir == DAVINCI_MMC_DATADIR_WRITE) {
		for (i = 0; i < (n >> 2); i++) {
			FUNC5(*((u32 *)p), host->base + DAVINCI_MMCDXR);
			p = p + 4;
		}
		if (n & 3) {
			FUNC1(host->base + DAVINCI_MMCDXR, p, (n & 3));
			p = p + (n & 3);
		}
	} else {
		for (i = 0; i < (n >> 2); i++) {
			*((u32 *)p) = FUNC3(host->base + DAVINCI_MMCDRR);
			p  = p + 4;
		}
		if (n & 3) {
			FUNC0(host->base + DAVINCI_MMCDRR, p, (n & 3));
			p = p + (n & 3);
		}
	}
	host->buffer = p;
}