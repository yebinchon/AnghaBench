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
struct ddb {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ddb*,int /*<<< orphan*/ ,char*,int,int) ; 
 struct ddb* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device,
			 struct device_attribute *attr, char *buf)
{
	struct ddb *dev = FUNC1(device);
	char snr[16];

	FUNC0(dev, 0, snr, 0x10, 15);
	snr[15] = 0; /* in case it is not terminated on EEPROM */
	return FUNC2(buf, "%s\n", snr);
}