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
struct channel_data {int rx_status; int /*<<< orphan*/  rxwaitq; int /*<<< orphan*/  wsem; int /*<<< orphan*/  rxdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct channel_data *chan)
{
	if (chan->rx_status) { /* Reader has died */
		FUNC0(chan->rxdata);
		FUNC1(&chan->wsem);
	}
	chan->rx_status = 1;
	FUNC2(&chan->rxwaitq);
	return 1;
}