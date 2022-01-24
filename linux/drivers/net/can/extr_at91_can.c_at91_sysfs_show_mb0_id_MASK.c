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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct at91_priv {int mb0_id; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct at91_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct at91_priv *priv = FUNC0(FUNC2(dev));

	if (priv->mb0_id & CAN_EFF_FLAG)
		return FUNC1(buf, PAGE_SIZE, "0x%08x\n", priv->mb0_id);
	else
		return FUNC1(buf, PAGE_SIZE, "0x%03x\n", priv->mb0_id);
}