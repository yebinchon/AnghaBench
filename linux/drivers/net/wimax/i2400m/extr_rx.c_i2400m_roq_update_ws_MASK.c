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
struct i2400m_roq {unsigned int ws; int /*<<< orphan*/  queue; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2400M_RO_TYPE_WS ; 
 unsigned int FUNC0 (struct i2400m*,struct i2400m_roq*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,struct i2400m_roq*,unsigned int) ; 
 struct device* FUNC2 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2400m*,struct i2400m_roq*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC5(struct i2400m *i2400m, struct i2400m_roq *roq,
			  unsigned sn)
{
	struct device *dev = FUNC2(i2400m);
	unsigned old_ws, nsn, len;

	FUNC1(2, dev, "(i2400m %p roq %p sn %u)\n", i2400m, roq, sn);
	old_ws = roq->ws;
	len = FUNC4(&roq->queue);
	nsn = FUNC0(i2400m, roq, sn);
	FUNC3(i2400m, roq, I2400M_RO_TYPE_WS,
			     old_ws, len, sn, nsn, roq->ws);
	FUNC1(2, dev, "(i2400m %p roq %p sn %u) = void\n", i2400m, roq, sn);
}