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
struct sk_buff {scalar_t__ len; int priority; int /*<<< orphan*/  ip_summed; scalar_t__ data; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_proto_bcdc_header {int flags; int priority; int data_offset; } ;
struct brcmf_if {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCDC ; 
 int BCDC_FLAG_SUM_GOOD ; 
 int BCDC_FLAG_VER_MASK ; 
 int BCDC_FLAG_VER_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_proto_bcdc_header*) ; 
 scalar_t__ BCDC_HEADER_LEN ; 
 int BCDC_PRIORITY_MASK ; 
 int BCDC_PROTO_VER ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int EBADE ; 
 int ENODATA ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_if*,int,struct sk_buff*) ; 
 struct brcmf_if* FUNC4 (struct brcmf_pub*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8(struct brcmf_pub *drvr, bool do_fws,
			 struct sk_buff *pktbuf, struct brcmf_if **ifp)
{
	struct brcmf_proto_bcdc_header *h;
	struct brcmf_if *tmp_if;

	FUNC2(BCDC, "Enter\n");

	/* Pop BCDC header used to convey priority for buses that don't */
	if (pktbuf->len <= BCDC_HEADER_LEN) {
		FUNC2(INFO, "rx data too short (%d <= %d)\n",
			  pktbuf->len, BCDC_HEADER_LEN);
		return -EBADE;
	}

	FUNC7(pktbuf->data);
	h = (struct brcmf_proto_bcdc_header *)(pktbuf->data);

	tmp_if = FUNC4(drvr, FUNC0(h));
	if (!tmp_if) {
		FUNC2(INFO, "no matching ifp found\n");
		return -EBADE;
	}
	if (((h->flags & BCDC_FLAG_VER_MASK) >> BCDC_FLAG_VER_SHIFT) !=
	    BCDC_PROTO_VER) {
		FUNC1(drvr, "%s: non-BCDC packet received, flags 0x%x\n",
			 FUNC5(tmp_if), h->flags);
		return -EBADE;
	}

	if (h->flags & BCDC_FLAG_SUM_GOOD) {
		FUNC2(BCDC, "%s: BDC rcv, good checksum, flags 0x%x\n",
			  FUNC5(tmp_if), h->flags);
		pktbuf->ip_summed = CHECKSUM_UNNECESSARY;
	}

	pktbuf->priority = h->priority & BCDC_PRIORITY_MASK;

	FUNC6(pktbuf, BCDC_HEADER_LEN);
	if (do_fws)
		FUNC3(tmp_if, h->data_offset << 2, pktbuf);
	else
		FUNC6(pktbuf, h->data_offset << 2);

	if (pktbuf->len == 0)
		return -ENODATA;

	if (ifp != NULL)
		*ifp = tmp_if;
	return 0;
}