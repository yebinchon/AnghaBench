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
struct wil6210_priv {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIL6210_AUTOSUSPEND_DELAY_MS ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct device* FUNC4 (struct wil6210_priv*) ; 

void FUNC5(struct wil6210_priv *wil)
{
	struct device *dev = FUNC4(wil);

	FUNC1(dev);
	FUNC2(dev, WIL6210_AUTOSUSPEND_DELAY_MS);
	FUNC3(dev);
	FUNC0(dev);
}