#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rx_agg {int /*<<< orphan*/  page; int /*<<< orphan*/  info_list; int /*<<< orphan*/  list; struct r8152* context; int /*<<< orphan*/  urb; int /*<<< orphan*/  buffer; } ;
struct r8152 {int /*<<< orphan*/  rx_count; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_info; int /*<<< orphan*/  rx_buf_sz; struct net_device* netdev; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {TYPE_1__ dev; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int __GFP_COMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rx_agg*) ; 
 struct rx_agg* FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct rx_agg *FUNC13(struct r8152 *tp, gfp_t mflags)
{
	struct net_device *netdev = tp->netdev;
	int node = netdev->dev.parent ? FUNC4(netdev->dev.parent) : -1;
	unsigned int order = FUNC5(tp->rx_buf_sz);
	struct rx_agg *rx_agg;
	unsigned long flags;

	rx_agg = FUNC7(sizeof(*rx_agg), mflags, node);
	if (!rx_agg)
		return NULL;

	rx_agg->page = FUNC2(mflags | __GFP_COMP, order);
	if (!rx_agg->page)
		goto free_rx;

	rx_agg->buffer = FUNC9(rx_agg->page);

	rx_agg->urb = FUNC12(0, mflags);
	if (!rx_agg->urb)
		goto free_buf;

	rx_agg->context = tp;

	FUNC0(&rx_agg->list);
	FUNC0(&rx_agg->info_list);
	FUNC10(&tp->rx_lock, flags);
	FUNC8(&rx_agg->info_list, &tp->rx_info);
	FUNC11(&tp->rx_lock, flags);

	FUNC3(&tp->rx_count);

	return rx_agg;

free_buf:
	FUNC1(rx_agg->page, order);
free_rx:
	FUNC6(rx_agg);
	return NULL;
}