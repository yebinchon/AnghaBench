#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int len; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
struct ar9170 {int readlen; void* cmd_buf; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  cmd_wait; int /*<<< orphan*/ * readbuf; TYPE_3__ cmd; TYPE_1__* udev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_RR_INVALID_RSP ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct ar9170 *ar, u32 len, void *buffer)
{
	/*
	 * Some commands may have a variable response length
	 * and we cannot predict the correct length in advance.
	 * So we only check if we provided enough space for the data.
	 */
	if (FUNC7(ar->readlen != (len - 4))) {
		FUNC2(&ar->udev->dev, "received invalid command response:"
			 "got %d, instead of %d\n", len - 4, ar->readlen);
		FUNC4("carl9170 cmd:", DUMP_PREFIX_OFFSET,
			ar->cmd_buf, (ar->cmd.hdr.len + 4) & 0x3f);
		FUNC4("carl9170 rsp:", DUMP_PREFIX_OFFSET,
			buffer, len);
		/*
		 * Do not complete. The command times out,
		 * and we get a stack trace from there.
		 */
		FUNC0(ar, CARL9170_RR_INVALID_RSP);
	}

	FUNC5(&ar->cmd_lock);
	if (ar->readbuf) {
		if (len >= 4)
			FUNC3(ar->readbuf, buffer + 4, len - 4);

		ar->readbuf = NULL;
	}
	FUNC1(&ar->cmd_wait);
	FUNC6(&ar->cmd_lock);
}