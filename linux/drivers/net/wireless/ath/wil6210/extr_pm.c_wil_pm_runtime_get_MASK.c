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
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,int) ; 
 struct device* FUNC3 (struct wil6210_priv*) ; 

int FUNC4(struct wil6210_priv *wil)
{
	int rc;
	struct device *dev = FUNC3(wil);

	rc = FUNC0(dev);
	if (rc < 0) {
		FUNC2(wil, "pm_runtime_get_sync() failed, rc = %d\n", rc);
		FUNC1(dev);
		return rc;
	}

	return 0;
}