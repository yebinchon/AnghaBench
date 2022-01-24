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
struct skge_port {int /*<<< orphan*/  netdev; int /*<<< orphan*/  port; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_REG_OFF ; 
 int /*<<< orphan*/  LNK_LED_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct skge_port *skge)
{
	FUNC4(skge->hw, FUNC0(skge->port, LNK_LED_REG), LED_REG_OFF);
	FUNC1(skge->netdev);
	FUNC3(skge->netdev);

	FUNC2(skge, link, skge->netdev, "Link is down\n");
}