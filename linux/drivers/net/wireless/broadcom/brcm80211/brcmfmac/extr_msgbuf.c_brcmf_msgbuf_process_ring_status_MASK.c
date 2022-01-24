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
struct TYPE_2__ {int /*<<< orphan*/  flow_ring_id; int /*<<< orphan*/  status; } ;
struct msgbuf_ring_status {TYPE_1__ compl_hdr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_msgbuf {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct brcmf_msgbuf *msgbuf,
					     void *buf)
{
	struct msgbuf_ring_status *ring_status = buf;
	struct brcmf_pub *drvr = msgbuf->drvr;
	int err;

	err = FUNC1(ring_status->compl_hdr.status);
	if (err) {
		int ring = FUNC1(ring_status->compl_hdr.flow_ring_id);

		FUNC0(drvr, "Firmware reported ring %d error: %d\n", ring,
			 err);
	}
}