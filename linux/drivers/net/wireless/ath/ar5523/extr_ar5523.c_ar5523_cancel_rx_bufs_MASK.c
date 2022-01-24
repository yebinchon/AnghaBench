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
struct ar5523_rx_data {int /*<<< orphan*/  list; int /*<<< orphan*/  urb; } ;
struct TYPE_2__ {scalar_t__ next; } ;
struct ar5523 {int /*<<< orphan*/  rx_data_free_cnt; int /*<<< orphan*/  rx_data_free; int /*<<< orphan*/  rx_data_list_lock; TYPE_1__ rx_data_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ar5523 *ar)
{
	struct ar5523_rx_data *data;
	unsigned long flags;

	do {
		FUNC3(&ar->rx_data_list_lock, flags);
		if (!FUNC1(&ar->rx_data_used))
			data = (struct ar5523_rx_data *) ar->rx_data_used.next;
		else
			data = NULL;
		FUNC4(&ar->rx_data_list_lock, flags);

		if (!data)
			break;

		FUNC5(data->urb);
		FUNC2(&data->list, &ar->rx_data_free);
		FUNC0(&ar->rx_data_free_cnt);
	} while (data);
}