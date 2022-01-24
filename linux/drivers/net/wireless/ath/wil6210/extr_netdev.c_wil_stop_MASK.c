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
struct net_device {int dummy; } ;

/* Variables and functions */
 struct wil6210_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int FUNC2 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev)
{
	struct wil6210_priv *wil = FUNC0(ndev);
	int rc = 0;

	FUNC1(wil, "stop\n");

	if (!FUNC3(wil, ndev, true, false)) {
		FUNC1(wil, "stop, last iface\n");
		rc = FUNC2(wil);
		if (!rc)
			FUNC4(wil);
	}

	return rc;
}