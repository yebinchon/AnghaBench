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
struct i2400m_msg_hdr {size_t size; } ;
struct i2400m {size_t tx_in; struct i2400m_msg_hdr* tx_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t I2400M_TX_BUF_SIZE ; 
 size_t I2400M_TX_SKIP ; 
 size_t FUNC1 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,size_t,size_t) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static
void FUNC5(struct i2400m *i2400m)
{
	struct device *dev = FUNC3(i2400m);
	size_t tx_in = i2400m->tx_in % I2400M_TX_BUF_SIZE;
	size_t tail_room = FUNC1(i2400m);
	struct i2400m_msg_hdr *msg = i2400m->tx_buf + tx_in;
	if (FUNC4(tail_room == 0))
		return;
	FUNC0(tail_room < sizeof(*msg));
	msg->size = tail_room | I2400M_TX_SKIP;
	FUNC2(2, dev, "skip tail: skipping %zu bytes @%zu\n",
		 tail_room, tx_in);
	i2400m->tx_in += tail_room;
}