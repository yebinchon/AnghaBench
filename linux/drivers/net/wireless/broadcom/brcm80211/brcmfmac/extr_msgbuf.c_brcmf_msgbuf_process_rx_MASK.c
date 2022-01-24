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
typedef  scalar_t__ u16 ;
struct brcmf_msgbuf {int rx_dataoffset; } ;
struct brcmf_commonring {scalar_t__ r_ptr; } ;

/* Variables and functions */
 scalar_t__ BRCMF_MSGBUF_UPDATE_RX_PTR_THRS ; 
 void* FUNC0 (struct brcmf_commonring*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_commonring*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_commonring*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_msgbuf*,void*) ; 

__attribute__((used)) static void FUNC4(struct brcmf_msgbuf *msgbuf,
				    struct brcmf_commonring *commonring)
{
	void *buf;
	u16 count;
	u16 processed;

again:
	buf = FUNC0(commonring, &count);
	if (buf == NULL)
		return;

	processed = 0;
	while (count) {
		FUNC3(msgbuf,
					     buf + msgbuf->rx_dataoffset);
		buf += FUNC1(commonring);
		processed++;
		if (processed == BRCMF_MSGBUF_UPDATE_RX_PTR_THRS) {
			FUNC2(commonring, processed);
			processed = 0;
		}
		count--;
	}
	if (processed)
		FUNC2(commonring, processed);

	if (commonring->r_ptr == 0)
		goto again;
}