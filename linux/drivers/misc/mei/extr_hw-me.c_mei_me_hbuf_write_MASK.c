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
typedef  scalar_t__ u32 ;
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int EMSGSIZE ; 
 int EOVERFLOW ; 
 char* MEI_HDR_FMT ; 
 int FUNC0 (struct mei_msg_hdr*) ; 
 size_t MEI_SLOT_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int FUNC4 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/  const*,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct mei_device *dev,
			     const void *hdr, size_t hdr_len,
			     const void *data, size_t data_len)
{
	unsigned long rem;
	unsigned long i;
	const u32 *reg_buf;
	u32 dw_cnt;
	int empty_slots;

	if (FUNC1(!hdr || !data || hdr_len & 0x3))
		return -EINVAL;

	FUNC2(dev->dev, MEI_HDR_FMT, FUNC0((struct mei_msg_hdr *)hdr));

	empty_slots = FUNC4(dev);
	FUNC2(dev->dev, "empty slots = %hu.\n", empty_slots);

	if (empty_slots < 0)
		return -EOVERFLOW;

	dw_cnt = FUNC3(hdr_len + data_len);
	if (dw_cnt > (u32)empty_slots)
		return -EMSGSIZE;

	reg_buf = hdr;
	for (i = 0; i < hdr_len / MEI_SLOT_SIZE; i++)
		FUNC6(dev, reg_buf[i]);

	reg_buf = data;
	for (i = 0; i < data_len / MEI_SLOT_SIZE; i++)
		FUNC6(dev, reg_buf[i]);

	rem = data_len & 0x3;
	if (rem > 0) {
		u32 reg = 0;

		FUNC8(&reg, (const u8 *)data + data_len - rem, rem);
		FUNC6(dev, reg);
	}

	FUNC5(dev);
	if (!FUNC7(dev))
		return -EIO;

	return 0;
}