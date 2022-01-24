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
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct i2400m_msg_hdr {int /*<<< orphan*/ * pld; int /*<<< orphan*/  num_pls; } ;
struct i2400m {int rx_pl_num; int rx_pl_max; int rx_pl_min; unsigned int rx_size_acc; unsigned int rx_size_min; unsigned int rx_size_max; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_num; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  I2400M_PL_ALIGN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*,struct sk_buff*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400m*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,unsigned int,unsigned int,int,size_t) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i2400m*,struct i2400m_msg_hdr const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m*,struct sk_buff*,unsigned int,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 (struct i2400m*,int /*<<< orphan*/ *,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pld ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 size_t FUNC14 (struct i2400m_msg_hdr const*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC15(struct i2400m *i2400m, struct sk_buff *skb)
{
	int i, result;
	struct device *dev = FUNC5(i2400m);
	const struct i2400m_msg_hdr *msg_hdr;
	size_t pl_itr, pl_size;
	unsigned long flags;
	unsigned num_pls, single_last, skb_len;

	skb_len = skb->len;
	FUNC3(4, dev, "(i2400m %p skb %p [size %u])\n",
		  i2400m, skb, skb_len);
	msg_hdr = (void *) skb->data;
	result = FUNC7(i2400m, msg_hdr, skb_len);
	if (result < 0)
		goto error_msg_hdr_check;
	result = -EIO;
	num_pls = FUNC11(msg_hdr->num_pls);
	/* Check payload descriptor(s) */
	pl_itr = FUNC14(msg_hdr, pld, num_pls);
	pl_itr = FUNC0(pl_itr, I2400M_PL_ALIGN);
	if (pl_itr > skb_len) {	/* got all the payload descriptors? */
		FUNC4(dev, "RX: HW BUG? message too short (%u bytes) for "
			"%u payload descriptors (%zu each, total %zu)\n",
			skb_len, num_pls, sizeof(msg_hdr->pld[0]), pl_itr);
		goto error_pl_descr_short;
	}
	/* Walk each payload payload--check we really got it */
	for (i = 0; i < num_pls; i++) {
		/* work around old gcc warnings */
		pl_size = FUNC6(&msg_hdr->pld[i]);
		result = FUNC9(i2400m, &msg_hdr->pld[i],
						  pl_itr, skb_len);
		if (result < 0)
			goto error_pl_descr_check;
		single_last = num_pls == 1 || i == num_pls - 1;
		FUNC8(i2400m, skb, single_last, &msg_hdr->pld[i],
				  skb->data + pl_itr);
		pl_itr += FUNC0(pl_size, I2400M_PL_ALIGN);
		FUNC1();		/* Don't monopolize */
	}
	FUNC10(skb);
	/* Update device statistics */
	FUNC12(&i2400m->rx_lock, flags);
	i2400m->rx_pl_num += i;
	if (i > i2400m->rx_pl_max)
		i2400m->rx_pl_max = i;
	if (i < i2400m->rx_pl_min)
		i2400m->rx_pl_min = i;
	i2400m->rx_num++;
	i2400m->rx_size_acc += skb_len;
	if (skb_len < i2400m->rx_size_min)
		i2400m->rx_size_min = skb_len;
	if (skb_len > i2400m->rx_size_max)
		i2400m->rx_size_max = skb_len;
	FUNC13(&i2400m->rx_lock, flags);
error_pl_descr_check:
error_pl_descr_short:
error_msg_hdr_check:
	FUNC2(4, dev, "(i2400m %p skb %p [size %u]) = %d\n",
		i2400m, skb, skb_len, result);
	return result;
}