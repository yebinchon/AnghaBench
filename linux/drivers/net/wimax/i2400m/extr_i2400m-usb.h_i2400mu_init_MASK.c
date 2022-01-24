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
struct skb_shared_info {int dummy; } ;
struct i2400mu {int rx_size_auto_shrink; int /*<<< orphan*/  do_autopm; scalar_t__ rx_size; int /*<<< orphan*/  rx_wq; int /*<<< orphan*/  rx_pending_count; int /*<<< orphan*/  tx_wq; int /*<<< orphan*/  urb_edc; int /*<<< orphan*/  i2400m; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline
void FUNC4(struct i2400mu *i2400mu)
{
	FUNC2(&i2400mu->i2400m);
	FUNC1(&i2400mu->urb_edc);
	FUNC3(&i2400mu->tx_wq);
	FUNC0(&i2400mu->rx_pending_count, 0);
	FUNC3(&i2400mu->rx_wq);
	i2400mu->rx_size = PAGE_SIZE - sizeof(struct skb_shared_info);
	FUNC0(&i2400mu->do_autopm, 1);
	i2400mu->rx_size_auto_shrink = 1;
}