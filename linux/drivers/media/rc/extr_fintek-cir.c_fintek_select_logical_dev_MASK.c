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
struct fintek_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCR_LOGICAL_DEV_NO ; 
 int /*<<< orphan*/  FUNC0 (struct fintek_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct fintek_dev *fintek, u8 ldev)
{
	FUNC0(fintek, ldev, GCR_LOGICAL_DEV_NO);
}