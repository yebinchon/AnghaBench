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
struct rocker_port {int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  napi_rx; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rocker_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct rocker_port*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rocker_port*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct rocker_port *rocker_port = FUNC2(dev);

	FUNC3(dev);
	FUNC7(rocker_port, false);
	FUNC1(&rocker_port->napi_rx);
	FUNC1(&rocker_port->napi_tx);
	FUNC8(rocker_port);
	FUNC0(FUNC4(rocker_port), rocker_port);
	FUNC0(FUNC5(rocker_port), rocker_port);
	FUNC6(rocker_port);

	return 0;
}