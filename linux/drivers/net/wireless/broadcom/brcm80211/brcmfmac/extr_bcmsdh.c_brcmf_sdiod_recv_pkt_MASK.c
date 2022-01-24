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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct brcmf_sdio_dev {int /*<<< orphan*/  func2; TYPE_1__* cc_core; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBSDIO_SB_ACCESS_2_4B_FLAG ; 
 int /*<<< orphan*/  SBSDIO_SB_OFT_ADDR_MASK ; 
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC3(struct brcmf_sdio_dev *sdiodev, struct sk_buff *pkt)
{
	u32 addr = sdiodev->cc_core->base;
	int err = 0;

	FUNC0(SDIO, "addr = 0x%x, size = %d\n", addr, pkt->len);

	err = FUNC1(sdiodev, addr);
	if (err)
		goto done;

	addr &= SBSDIO_SB_OFT_ADDR_MASK;
	addr |= SBSDIO_SB_ACCESS_2_4B_FLAG;

	err = FUNC2(sdiodev, sdiodev->func2, addr, pkt);

done:
	return err;
}