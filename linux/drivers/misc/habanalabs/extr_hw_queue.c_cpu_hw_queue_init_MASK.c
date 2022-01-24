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
struct hl_hw_queue {int dummy; } ;
struct hl_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hl_device*,struct hl_hw_queue*,int) ; 

__attribute__((used)) static int FUNC1(struct hl_device *hdev, struct hl_hw_queue *q)
{
	return FUNC0(hdev, q, true);
}