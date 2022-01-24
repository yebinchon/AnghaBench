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
struct wm8994 {int /*<<< orphan*/  dev; int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8994*) ; 

__attribute__((used)) static void FUNC5(struct wm8994 *wm8994)
{
	FUNC1(wm8994->dev);
	FUNC4(wm8994);
	FUNC2(wm8994->num_supplies, wm8994->supplies);
	FUNC3(wm8994->num_supplies, wm8994->supplies);
	FUNC0(wm8994->dev);
}