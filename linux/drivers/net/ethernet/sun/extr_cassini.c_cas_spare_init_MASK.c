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
struct cas {int /*<<< orphan*/  rx_spare_lock; int /*<<< orphan*/  rx_spares_needed; int /*<<< orphan*/  rx_spare_list; int /*<<< orphan*/  rx_inuse_lock; int /*<<< orphan*/  rx_inuse_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RX_SPARE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cas *cp)
{
  	FUNC1(&cp->rx_inuse_lock);
	FUNC0(&cp->rx_inuse_list);
	FUNC2(&cp->rx_inuse_lock);

	FUNC1(&cp->rx_spare_lock);
	FUNC0(&cp->rx_spare_list);
	cp->rx_spares_needed = RX_SPARE_COUNT;
	FUNC2(&cp->rx_spare_lock);
}