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
struct lis3lv02d {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int s16 ;

/* Variables and functions */
#define  SELFTEST_FAIL 130 
#define  SELFTEST_IRQ 129 
#define  SELFTEST_OK 128 
 struct lis3lv02d* FUNC0 (struct device*) ; 
 int FUNC1 (struct lis3lv02d*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct lis3lv02d*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct lis3lv02d *lis3 = FUNC0(dev);
	s16 values[3];

	static const char ok[] = "OK";
	static const char fail[] = "FAIL";
	static const char irq[] = "FAIL_IRQ";
	const char *res;

	FUNC2(lis3);
	switch (FUNC1(lis3, values)) {
	case SELFTEST_FAIL:
		res = fail;
		break;
	case SELFTEST_IRQ:
		res = irq;
		break;
	case SELFTEST_OK:
	default:
		res = ok;
		break;
	}
	return FUNC3(buf, "%s %d %d %d\n", res,
		values[0], values[1], values[2]);
}