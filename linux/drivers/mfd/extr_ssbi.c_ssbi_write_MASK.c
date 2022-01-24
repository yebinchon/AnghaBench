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
typedef  int /*<<< orphan*/  u16 ;
struct ssbi {int (* write ) (struct ssbi*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ;int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct ssbi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct ssbi*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

int FUNC4(struct device *dev, u16 addr, const u8 *buf, int len)
{
	struct ssbi *ssbi = FUNC0(dev);
	unsigned long flags;
	int ret;

	FUNC1(&ssbi->lock, flags);
	ret = ssbi->write(ssbi, addr, buf, len);
	FUNC2(&ssbi->lock, flags);

	return ret;
}