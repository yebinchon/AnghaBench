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
typedef  int uint ;
typedef  int u32 ;
struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_proto_bcdc_dcmd {int /*<<< orphan*/  status; int /*<<< orphan*/  flags; } ;
struct brcmf_bcdc {int reqid; int /*<<< orphan*/ * buf; struct brcmf_proto_bcdc_dcmd msg; } ;
struct TYPE_2__ {scalar_t__ pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCDC ; 
 int BCDC_DCMD_ERROR ; 
 int BCDC_DCMD_ID_MASK ; 
 int BCDC_DCMD_ID_SHIFT ; 
 int EINVAL ; 
 int RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pub*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct brcmf_pub*,int,int) ; 
 int FUNC5 (struct brcmf_pub*,int,int,void*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int) ; 

__attribute__((used)) static int
FUNC8(struct brcmf_pub *drvr, int ifidx, uint cmd,
			    void *buf, uint len, int *fwerr)
{
	struct brcmf_bcdc *bcdc = (struct brcmf_bcdc *)drvr->proto->pd;
	struct brcmf_proto_bcdc_dcmd *msg = &bcdc->msg;
	void *info;
	int ret = 0, retries = 0;
	u32 id, flags;

	FUNC1(BCDC, "Enter, cmd %d len %d\n", cmd, len);

	*fwerr = 0;
	ret = FUNC5(drvr, ifidx, cmd, buf, len, false);
	if (ret < 0) {
		FUNC0(drvr, "brcmf_proto_bcdc_msg failed w/status %d\n",
			 ret);
		goto done;
	}

retry:
	/* wait for interrupt and get first fragment */
	ret = FUNC4(drvr, bcdc->reqid, len);
	if (ret < 0)
		goto done;

	flags = FUNC6(msg->flags);
	id = (flags & BCDC_DCMD_ID_MASK) >> BCDC_DCMD_ID_SHIFT;

	if ((id < bcdc->reqid) && (++retries < RETRIES))
		goto retry;
	if (id != bcdc->reqid) {
		FUNC0(drvr, "%s: unexpected request id %d (expected %d)\n",
			 FUNC3(FUNC2(drvr, ifidx)), id,
			 bcdc->reqid);
		ret = -EINVAL;
		goto done;
	}

	/* Check info buffer */
	info = (void *)&bcdc->buf[0];

	/* Copy info buffer */
	if (buf) {
		if (ret < (int)len)
			len = ret;
		FUNC7(buf, info, len);
	}

	ret = 0;

	/* Check the ERROR flag */
	if (flags & BCDC_DCMD_ERROR)
		*fwerr = FUNC6(msg->status);
done:
	return ret;
}