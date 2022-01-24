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
typedef  int u8 ;
typedef  int u64 ;
struct sg_mapping_iter {size_t consumed; size_t length; scalar_t__ addr; } ;
struct mmc_request {TYPE_1__* data; } ;
struct cvm_mmc_host {scalar_t__ base; struct sg_mapping_iter smi; } ;
struct TYPE_2__ {int blocks; int blksz; int bytes_xfered; scalar_t__ error; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cvm_mmc_host*) ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cvm_mmc_host *host, struct mmc_request *req,
		    u64 dbuf)
{
	struct sg_mapping_iter *smi = &host->smi;
	int data_len = req->data->blocks * req->data->blksz;
	int bytes_xfered, shift = -1;
	u64 dat = 0;

	/* Auto inc from offset zero */
	FUNC5((0x10000 | (dbuf << 6)), host->base + FUNC1(host));

	for (bytes_xfered = 0; bytes_xfered < data_len;) {
		if (smi->consumed >= smi->length) {
			if (!FUNC3(smi))
				break;
			smi->consumed = 0;
		}

		if (shift < 0) {
			dat = FUNC2(host->base + FUNC0(host));
			shift = 56;
		}

		while (smi->consumed < smi->length && shift >= 0) {
			((u8 *)smi->addr)[smi->consumed] = (dat >> shift) & 0xff;
			bytes_xfered++;
			smi->consumed++;
			shift -= 8;
		}
	}

	FUNC4(smi);
	req->data->bytes_xfered = bytes_xfered;
	req->data->error = 0;
}