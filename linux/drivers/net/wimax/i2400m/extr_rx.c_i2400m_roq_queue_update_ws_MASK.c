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
struct sk_buff {int /*<<< orphan*/  cb; } ;
struct i2400m_roq_data {int /*<<< orphan*/  cs; } ;
struct i2400m_roq {unsigned int ws; int /*<<< orphan*/  queue; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2400M_RO_TYPE_PACKET_WS ; 
 unsigned int FUNC0 (struct i2400m_roq*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2400m*,struct i2400m_roq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2400m*,struct i2400m_roq*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC9(struct i2400m *i2400m, struct i2400m_roq *roq,
				struct sk_buff * skb, unsigned sn)
{
	struct device *dev = FUNC5(i2400m);
	unsigned nsn, old_ws, len;

	FUNC4(2, dev, "(i2400m %p roq %p skb %p sn %u)\n",
		  i2400m, roq, skb, sn);
	len = FUNC8(&roq->queue);
	nsn = FUNC0(roq, sn);
	/*
	 * For type 3(queue_update_window_start) rx messages, there is no
	 * need to check if the normalized sequence number is greater 1023.
	 * Simply insert and deliver all packets to the host up to the
	 * window start.
	 */
	old_ws = roq->ws;
	/* If the queue is empty, don't bother as we'd queue
	 * it and immediately unqueue it -- just deliver it.
	 */
	if (len == 0) {
		struct i2400m_roq_data *roq_data;
		roq_data = (struct i2400m_roq_data *) &skb->cb;
		FUNC6(i2400m, skb, roq_data->cs);
	} else
		FUNC1(i2400m, roq, skb, sn, nsn);

	FUNC2(i2400m, roq, sn + 1);
	FUNC7(i2400m, roq, I2400M_RO_TYPE_PACKET_WS,
			   old_ws, len, sn, nsn, roq->ws);

	FUNC3(2, dev, "(i2400m %p roq %p skb %p sn %u) = void\n",
		i2400m, roq, skb, sn);
}