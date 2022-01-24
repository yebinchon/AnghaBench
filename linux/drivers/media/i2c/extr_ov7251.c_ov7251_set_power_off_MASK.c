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
struct ov7251 {int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  xclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ov7251*) ; 

__attribute__((used)) static void FUNC3(struct ov7251 *ov7251)
{
	FUNC0(ov7251->xclk);
	FUNC1(ov7251->enable_gpio, 0);
	FUNC2(ov7251);
}