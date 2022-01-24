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
struct spider_net_card {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int SPIDER_NET_FIRMWARE_SEQS ; 
 int SPIDER_NET_FIRMWARE_SEQWORDS ; 
 scalar_t__ SPIDER_NET_GSINIT ; 
 scalar_t__ SPIDER_NET_GSnPRGADR ; 
 scalar_t__ SPIDER_NET_GSnPRGDAT ; 
 int /*<<< orphan*/  const SPIDER_NET_RUN_SEQ_VALUE ; 
 int /*<<< orphan*/  const SPIDER_NET_STOP_SEQ_VALUE ; 
 scalar_t__ FUNC0 (struct spider_net_card*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct spider_net_card*,scalar_t__,int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC2(struct spider_net_card *card,
			     const void *firmware_ptr)
{
	int sequencer, i;
	const u32 *fw_ptr = firmware_ptr;

	/* stop sequencers */
	FUNC1(card, SPIDER_NET_GSINIT,
			     SPIDER_NET_STOP_SEQ_VALUE);

	for (sequencer = 0; sequencer < SPIDER_NET_FIRMWARE_SEQS;
	     sequencer++) {
		FUNC1(card,
				     SPIDER_NET_GSnPRGADR + sequencer * 8, 0);
		for (i = 0; i < SPIDER_NET_FIRMWARE_SEQWORDS; i++) {
			FUNC1(card, SPIDER_NET_GSnPRGDAT +
					     sequencer * 8, *fw_ptr);
			fw_ptr++;
		}
	}

	if (FUNC0(card, SPIDER_NET_GSINIT))
		return -EIO;

	FUNC1(card, SPIDER_NET_GSINIT,
			     SPIDER_NET_RUN_SEQ_VALUE);

	return 0;
}