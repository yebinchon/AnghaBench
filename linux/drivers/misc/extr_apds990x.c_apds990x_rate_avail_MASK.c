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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int* arates_hz ; 
 scalar_t__ FUNC1 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	int i;
	int pos = 0;

	for (i = 0; i < FUNC0(arates_hz); i++)
		pos += FUNC1(buf + pos, "%d ", arates_hz[i]);
	FUNC1(buf + pos - 1, "\n");
	return pos;
}