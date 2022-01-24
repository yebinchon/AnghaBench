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
struct tsi108_prv_data {int /*<<< orphan*/  timer; struct net_device* dev; } ;
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHECK_PHY_INTERVAL ; 
 struct tsi108_prv_data* data ; 
 struct tsi108_prv_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct tsi108_prv_data *data = FUNC0(data, t, timer);
	struct net_device *dev = data->dev;

	FUNC2(dev);
	FUNC3(dev);
	FUNC1(&data->timer, jiffies + CHECK_PHY_INTERVAL);
}