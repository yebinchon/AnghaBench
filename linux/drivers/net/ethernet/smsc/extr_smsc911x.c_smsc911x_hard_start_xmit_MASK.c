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
typedef  int ulong ;
typedef  int u32 ;
struct smsc911x_data {TYPE_1__* ops; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* tx_writefifo ) (struct smsc911x_data*,unsigned int*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_INT ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int TX_CMD_A_FIRST_SEG_ ; 
 unsigned int TX_CMD_A_LAST_SEG_ ; 
 int /*<<< orphan*/  TX_DATA_FIFO ; 
 int /*<<< orphan*/  TX_FIFO_INF ; 
 unsigned int TX_FIFO_INF_TDFREE_ ; 
 unsigned int TX_FIFO_LOW_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct smsc911x_data* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 unsigned int FUNC5 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC7 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct smsc911x_data*,unsigned int*,int) ; 
 int /*<<< orphan*/  tx_err ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static netdev_tx_t
FUNC11(struct sk_buff *skb, struct net_device *dev)
{
	struct smsc911x_data *pdata = FUNC2(dev);
	unsigned int freespace;
	unsigned int tx_cmd_a;
	unsigned int tx_cmd_b;
	unsigned int temp;
	u32 wrsz;
	ulong bufp;

	freespace = FUNC5(pdata, TX_FIFO_INF) & TX_FIFO_INF_TDFREE_;

	if (FUNC10(freespace < TX_FIFO_LOW_THRESHOLD))
		FUNC0(pdata, tx_err,
			  "Tx data fifo low, space available: %d", freespace);

	/* Word alignment adjustment */
	tx_cmd_a = (u32)((ulong)skb->data & 0x03) << 16;
	tx_cmd_a |= TX_CMD_A_FIRST_SEG_ | TX_CMD_A_LAST_SEG_;
	tx_cmd_a |= (unsigned int)skb->len;

	tx_cmd_b = ((unsigned int)skb->len) << 16;
	tx_cmd_b |= (unsigned int)skb->len;

	FUNC6(pdata, TX_DATA_FIFO, tx_cmd_a);
	FUNC6(pdata, TX_DATA_FIFO, tx_cmd_b);

	bufp = (ulong)skb->data & (~0x3);
	wrsz = (u32)skb->len + 3;
	wrsz += (u32)((ulong)skb->data & 0x3);
	wrsz >>= 2;

	pdata->ops->tx_writefifo(pdata, (unsigned int *)bufp, wrsz);
	freespace -= (skb->len + 32);
	FUNC4(skb);
	FUNC1(skb);

	if (FUNC10(FUNC7(pdata) >= 30))
		FUNC8(dev);

	if (freespace < TX_FIFO_LOW_THRESHOLD) {
		FUNC3(dev);
		temp = FUNC5(pdata, FIFO_INT);
		temp &= 0x00FFFFFF;
		temp |= 0x32000000;
		FUNC6(pdata, FIFO_INT, temp);
	}

	return NETDEV_TX_OK;
}