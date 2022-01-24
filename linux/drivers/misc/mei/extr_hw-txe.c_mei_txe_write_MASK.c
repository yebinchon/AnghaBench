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
struct mei_txe_hw {scalar_t__ slots; int /*<<< orphan*/  aliveness; } ;
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int MEI_FW_STATUS_STR_SZ ; 
 int /*<<< orphan*/  MEI_HDR_FMT ; 
 int /*<<< orphan*/  FUNC0 (struct mei_msg_hdr*) ; 
 size_t MEI_SLOT_SIZE ; 
 scalar_t__ TXE_HBUF_DEPTH ; 
 scalar_t__ FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_txe_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct mei_device*,unsigned long,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC9 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/  const*,unsigned long) ; 
 struct mei_txe_hw* FUNC12 (struct mei_device*) ; 

__attribute__((used)) static int FUNC13(struct mei_device *dev,
			 const void *hdr, size_t hdr_len,
			 const void *data, size_t data_len)
{
	struct mei_txe_hw *hw = FUNC12(dev);
	unsigned long rem;
	const u32 *reg_buf;
	u32 slots = TXE_HBUF_DEPTH;
	u32 dw_cnt;
	unsigned long i, j;

	if (FUNC2(!hdr || !data || hdr_len & 0x3))
		return -EINVAL;

	FUNC3(dev->dev, MEI_HDR_FMT, FUNC0((struct mei_msg_hdr *)hdr));

	dw_cnt = FUNC5(hdr_len + data_len);
	if (dw_cnt > slots)
		return -EMSGSIZE;

	if (FUNC1(!hw->aliveness, "txe write: aliveness not asserted\n"))
		return -EAGAIN;

	/* Enable Input Ready Interrupt. */
	FUNC9(dev);

	if (!FUNC10(dev)) {
		char fw_sts_str[MEI_FW_STATUS_STR_SZ];

		FUNC6(dev, fw_sts_str, MEI_FW_STATUS_STR_SZ);
		FUNC4(dev->dev, "Input is not ready %s\n", fw_sts_str);
		return -EAGAIN;
	}

	reg_buf = hdr;
	for (i = 0; i < hdr_len / MEI_SLOT_SIZE; i++)
		FUNC8(dev, i, reg_buf[i]);

	reg_buf = data;
	for (j = 0; j < data_len / MEI_SLOT_SIZE; j++)
		FUNC8(dev, i + j, reg_buf[j]);

	rem = data_len & 0x3;
	if (rem > 0) {
		u32 reg = 0;

		FUNC11(&reg, (const u8 *)data + data_len - rem, rem);
		FUNC8(dev, i + j, reg);
	}

	/* after each write the whole buffer is consumed */
	hw->slots = 0;

	/* Set Input-Doorbell */
	FUNC7(hw);

	return 0;
}