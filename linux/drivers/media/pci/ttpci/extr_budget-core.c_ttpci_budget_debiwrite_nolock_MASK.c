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
typedef  int u32 ;
struct saa7146_dev {int dummy; } ;
struct budget {struct saa7146_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBI_AD ; 
 int /*<<< orphan*/  DEBI_COMMAND ; 
 int /*<<< orphan*/  DEBI_CONFIG ; 
 int /*<<< orphan*/  DEBI_PAGE ; 
 int /*<<< orphan*/  MC2 ; 
 int FUNC0 (struct saa7146_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct budget *budget, u32 config,
		int addr, int count, u32 value, int nobusyloop)
{
	struct saa7146_dev *saa = budget->dev;
	int result;

	result = FUNC0(saa, nobusyloop);
	if (result < 0)
		return result;

	FUNC1(saa, DEBI_COMMAND, (count << 17) | 0x00000 | (addr & 0xffff));
	FUNC1(saa, DEBI_CONFIG, config);
	FUNC1(saa, DEBI_PAGE, 0);
	FUNC1(saa, DEBI_AD, value);
	FUNC1(saa, MC2, (2 << 16) | 2);

	result = FUNC0(saa, nobusyloop);
	return result < 0 ? result : 0;
}