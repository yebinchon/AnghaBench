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
struct wil6210_priv {int /*<<< orphan*/  mutex; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wil6210_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev)
{
	struct wil6210_priv *wil = FUNC1(ndev);

	FUNC0(&wil->mutex);

	FUNC2(wil, "ethtoolops_begin\n");

	return 0;
}