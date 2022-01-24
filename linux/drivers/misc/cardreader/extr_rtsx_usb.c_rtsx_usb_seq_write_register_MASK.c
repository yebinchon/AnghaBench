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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct rtsx_ucr {scalar_t__ cmd_buf; int /*<<< orphan*/  pusb_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  EP_BULK_OUT ; 
 scalar_t__ IOBUF_SIZE ; 
 int /*<<< orphan*/  SEQ_WRITE ; 
 scalar_t__ SEQ_WRITE_DATA_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_ucr*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtsx_ucr*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rtsx_ucr *ucr,
		u16 addr, u16 len, u8 *data)
{
	u16 cmd_len = FUNC0(SEQ_WRITE_DATA_OFFSET + len, 4);

	if (!data)
		return -EINVAL;

	if (cmd_len > IOBUF_SIZE)
		return -EINVAL;

	FUNC2(ucr, addr, len, SEQ_WRITE);
	FUNC1(ucr->cmd_buf + SEQ_WRITE_DATA_OFFSET, data, len);

	return FUNC3(ucr,
			FUNC4(ucr->pusb_dev, EP_BULK_OUT),
			ucr->cmd_buf, cmd_len, 0, NULL, 100);
}