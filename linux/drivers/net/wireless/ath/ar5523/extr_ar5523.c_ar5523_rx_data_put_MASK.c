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
struct ar5523_rx_data {int /*<<< orphan*/  list; } ;
struct ar5523 {int /*<<< orphan*/  rx_data_list_lock; int /*<<< orphan*/  rx_data_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ar5523 *ar,
				struct ar5523_rx_data *data)
{
	unsigned long flags;
	FUNC1(&ar->rx_data_list_lock, flags);
	FUNC0(&data->list, &ar->rx_data_free);
	FUNC2(&ar->rx_data_list_lock, flags);
}