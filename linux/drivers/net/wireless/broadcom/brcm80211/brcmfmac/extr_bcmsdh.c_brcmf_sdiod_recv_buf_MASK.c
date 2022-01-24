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
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct brcmf_sdio_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct brcmf_sdio_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct brcmf_sdio_dev *sdiodev, u8 *buf, uint nbytes)
{
	struct sk_buff *mypkt;
	int err;

	mypkt = FUNC3(nbytes);
	if (!mypkt) {
		FUNC0("brcmu_pkt_buf_get_skb failed: len %d\n",
			  nbytes);
		return -EIO;
	}

	err = FUNC1(sdiodev, mypkt);
	if (!err)
		FUNC4(buf, mypkt->data, nbytes);

	FUNC2(mypkt);
	return err;
}