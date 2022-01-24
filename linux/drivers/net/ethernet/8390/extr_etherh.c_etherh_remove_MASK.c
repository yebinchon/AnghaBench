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
struct net_device {int dummy; } ;
struct expansion_card {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct expansion_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct expansion_card *ec)
{
	struct net_device *dev = FUNC0(ec);

	FUNC2(ec, NULL);

	FUNC4(dev);

	FUNC3(dev);

	FUNC1(ec);
}