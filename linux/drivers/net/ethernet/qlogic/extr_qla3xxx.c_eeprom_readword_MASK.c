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
typedef  int /*<<< orphan*/  u32 ;
struct ql3_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FM93C56A_READ ; 
 int /*<<< orphan*/  FUNC0 (struct ql3_adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ql3_adapter*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql3_adapter*) ; 

__attribute__((used)) static void FUNC4(struct ql3_adapter *qdev,
			    u32 eepromAddr, unsigned short *value)
{
	FUNC3(qdev);
	FUNC0(qdev, (int)FM93C56A_READ, eepromAddr);
	FUNC1(qdev, value);
	FUNC2(qdev);
}