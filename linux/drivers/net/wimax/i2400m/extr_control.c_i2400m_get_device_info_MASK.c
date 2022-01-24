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
struct sk_buff {scalar_t__ data; } ;
struct i2400m_tlv_hdr {int dummy; } ;
struct i2400m_tlv_detailed_device_info {int dummy; } ;
struct i2400m_l3l4_hdr {int /*<<< orphan*/  pl; void* version; scalar_t__ length; void* type; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  strerr ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2400M_L3L4_VERSION ; 
 int /*<<< orphan*/  I2400M_MT_GET_DEVICE_INFO ; 
 int /*<<< orphan*/  I2400M_TLV_DETAILED_DEVICE_INFO ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 int FUNC6 (struct i2400m_l3l4_hdr const*,char*,int) ; 
 struct sk_buff* FUNC7 (struct i2400m*,struct i2400m_l3l4_hdr*,int) ; 
 struct i2400m_tlv_hdr* FUNC8 (struct i2400m*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2400m_l3l4_hdr*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct i2400m_l3l4_hdr* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 struct i2400m_l3l4_hdr* FUNC13 (struct sk_buff*,size_t*) ; 

struct sk_buff *FUNC14(struct i2400m *i2400m)
{
	int result;
	struct device *dev = FUNC5(i2400m);
	struct sk_buff *ack_skb;
	struct i2400m_l3l4_hdr *cmd;
	const struct i2400m_l3l4_hdr *ack;
	size_t ack_len;
	const struct i2400m_tlv_hdr *tlv;
	const struct i2400m_tlv_detailed_device_info *ddi;
	char strerr[32];

	ack_skb = FUNC0(-ENOMEM);
	cmd = FUNC11(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL)
		goto error_alloc;
	cmd->type = FUNC3(I2400M_MT_GET_DEVICE_INFO);
	cmd->length = 0;
	cmd->version = FUNC3(I2400M_L3L4_VERSION);

	ack_skb = FUNC7(i2400m, cmd, sizeof(*cmd));
	if (FUNC1(ack_skb)) {
		FUNC4(dev, "Failed to issue 'get device info' command: %ld\n",
			FUNC2(ack_skb));
		goto error_msg_to_dev;
	}
	ack = FUNC13(ack_skb, &ack_len);
	result = FUNC6(ack, strerr, sizeof(strerr));
	if (result < 0) {
		FUNC4(dev, "'get device info' (0x%04x) command failed: "
			"%d - %s\n", I2400M_MT_GET_DEVICE_INFO, result,
			strerr);
		goto error_cmd_failed;
	}
	tlv = FUNC8(i2400m, ack->pl, ack_len - sizeof(*ack),
			      I2400M_TLV_DETAILED_DEVICE_INFO, sizeof(*ddi));
	if (tlv == NULL) {
		FUNC4(dev, "GET DEVICE INFO: "
			"detailed device info TLV not found (0x%04x)\n",
			I2400M_TLV_DETAILED_DEVICE_INFO);
		result = -EIO;
		goto error_no_tlv;
	}
	FUNC12(ack_skb, (void *) tlv - (void *) ack_skb->data);
error_msg_to_dev:
	FUNC9(cmd);
error_alloc:
	return ack_skb;

error_no_tlv:
error_cmd_failed:
	FUNC10(ack_skb);
	FUNC9(cmd);
	return FUNC0(result);
}