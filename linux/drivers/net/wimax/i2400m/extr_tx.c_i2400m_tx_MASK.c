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
struct i2400m_msg_hdr {scalar_t__ num_pls; scalar_t__ size; TYPE_1__* pld; } ;
struct i2400m {void* tx_buf; int /*<<< orphan*/  (* bus_tx_kick ) (struct i2400m*) ;int /*<<< orphan*/  tx_lock; struct i2400m_msg_hdr* tx_msg; int /*<<< orphan*/  bus_tx_block_size; } ;
struct device {int dummy; } ;
typedef  enum i2400m_pt { ____Placeholder_i2400m_pt } i2400m_pt ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  I2400M_PL_ALIGN ; 
 int I2400M_PT_RESET_COLD ; 
 int I2400M_PT_RESET_WARM ; 
 scalar_t__ I2400M_TX_MSG_SIZE ; 
 void* TAIL_FULL ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,void const*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*,void const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,...) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m*) ; 
 void* FUNC7 (struct i2400m*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2400m*) ; 
 void* FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (void*,int,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (struct i2400m*) ; 
 scalar_t__ FUNC19 (int) ; 

int FUNC20(struct i2400m *i2400m, const void *buf, size_t buf_len,
	      enum i2400m_pt pl_type)
{
	int result = -ENOSPC;
	struct device *dev = FUNC4(i2400m);
	unsigned long flags;
	size_t padded_len;
	void *ptr;
	bool try_head = false;
	unsigned is_singleton = pl_type == I2400M_PT_RESET_WARM
		|| pl_type == I2400M_PT_RESET_COLD;

	FUNC2(3, dev, "(i2400m %p skb %p [%zu bytes] pt %u)\n",
		  i2400m, buf, buf_len, pl_type);
	padded_len = FUNC0(buf_len, I2400M_PL_ALIGN);
	FUNC3(5, dev, "padded_len %zd buf_len %zd\n", padded_len, buf_len);
	/* If there is no current TX message, create one; if the
	 * current one is out of payload slots or we have a singleton,
	 * close it and start a new one */
	FUNC16(&i2400m->tx_lock, flags);
	/* If tx_buf is NULL, device is shutdown */
	if (i2400m->tx_buf == NULL) {
		result = -ESHUTDOWN;
		goto error_tx_new;
	}
try_new:
	if (FUNC19(i2400m->tx_msg == NULL))
		FUNC9(i2400m);
	else if (FUNC19(!FUNC8(i2400m)
			  || (is_singleton && i2400m->tx_msg->num_pls != 0))) {
		FUNC3(2, dev, "closing TX message (fits %u singleton "
			 "%u num_pls %u)\n", FUNC8(i2400m),
			 is_singleton, i2400m->tx_msg->num_pls);
		FUNC6(i2400m);
		FUNC9(i2400m);
	}
	if (i2400m->tx_msg == NULL)
		goto error_tx_new;
	/*
	 * Check if this skb will fit in the TX queue's current active
	 * TX message. The total message size must not exceed the maximum
	 * size of each message I2400M_TX_MSG_SIZE. If it exceeds,
	 * close the current message and push this skb into the new message.
	 */
	if (i2400m->tx_msg->size + padded_len > I2400M_TX_MSG_SIZE) {
		FUNC3(2, dev, "TX: message too big, going new\n");
		FUNC6(i2400m);
		FUNC9(i2400m);
	}
	if (i2400m->tx_msg == NULL)
		goto error_tx_new;
	/* So we have a current message header; now append space for
	 * the message -- if there is not enough, try the head */
	ptr = FUNC7(i2400m, padded_len,
				  i2400m->bus_tx_block_size, try_head);
	if (ptr == TAIL_FULL) {	/* Tail is full, try head */
		FUNC3(2, dev, "pl append: tail full\n");
		FUNC6(i2400m);
		FUNC10(i2400m);
		try_head = true;
		goto try_new;
	} else if (ptr == NULL) {	/* All full */
		result = -ENOSPC;
		FUNC3(2, dev, "pl append: all full\n");
	} else {			/* Got space, copy it, set padding */
		struct i2400m_msg_hdr *tx_msg = i2400m->tx_msg;
		unsigned num_pls = FUNC11(tx_msg->num_pls);
		FUNC14(ptr, buf, buf_len);
		FUNC15(ptr + buf_len, 0xad, padded_len - buf_len);
		FUNC5(&tx_msg->pld[num_pls], buf_len, pl_type);
		FUNC3(3, dev, "pld 0x%08x (type 0x%1x len 0x%04zx\n",
			 FUNC12(tx_msg->pld[num_pls].val),
			 pl_type, buf_len);
		tx_msg->num_pls = FUNC11(num_pls+1);
		tx_msg->size += padded_len;
		FUNC3(2, dev, "TX: appended %zu b (up to %u b) pl #%u\n",
			padded_len, tx_msg->size, num_pls+1);
		FUNC3(2, dev,
			 "TX: appended hdr @%zu %zu b pl #%u @%zu %zu/%zu b\n",
			 (void *)tx_msg - i2400m->tx_buf, (size_t)tx_msg->size,
			 num_pls+1, ptr - i2400m->tx_buf, buf_len, padded_len);
		result = 0;
		if (is_singleton)
			FUNC6(i2400m);
	}
error_tx_new:
	FUNC17(&i2400m->tx_lock, flags);
	/* kick in most cases, except when the TX subsys is down, as
	 * it might free space */
	if (FUNC13(result != -ESHUTDOWN))
		i2400m->bus_tx_kick(i2400m);
	FUNC1(3, dev, "(i2400m %p skb %p [%zu bytes] pt %u) = %d\n",
		i2400m, buf, buf_len, pl_type, result);
	return result;
}